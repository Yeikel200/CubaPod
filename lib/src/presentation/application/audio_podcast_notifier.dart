import 'dart:async';

import 'package:cubapod/core/error/exception.dart';
import 'package:cubapod/src/data/podcast_player.dart';
import 'package:cubapod/src/domine/model/episode_type.dart';
import 'package:cubapod/src/domine/model/podcast_type.dart';
import 'package:cubapod/src/domine/repository/audio_podcast_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class AudioPodcastState extends Equatable {
  const AudioPodcastState();
}

class InitialState extends AudioPodcastState {
  const InitialState();

  @override
  List<Object> get props => [];
}

class LoadingState extends AudioPodcastState {
  final EpisodeType episode;
  const LoadingState({@required this.episode});
  @override
  List<Object> get props => [episode];
}

class PlayingState extends AudioPodcastState {
  final EpisodeType episode;
  const PlayingState({@required this.episode});

  @override
  List<Object> get props => [episode];
}

class PauseState extends AudioPodcastState {
  const PauseState();

  @override
  List<Object> get props => [];
}

class StopState extends AudioPodcastState {
  const StopState();

  @override
  List<Object> get props => [];
}

class ErrorState extends AudioPodcastState {
  const ErrorState();

  @override
  List<Object> get props => [];
}

class AudioPodcastNotifier extends StateNotifier<AudioPodcastState> {
  AudioPodcastNotifier(
      {@required AudioPodcastRepository audioPodcastRepository})
      : _audioPodcastRepository = audioPodcastRepository,
        assert(audioPodcastRepository != null),
        super(StopState()) {
    audioPodcastRepository.onPlayerStateChanged.listen((audioState) {
      switch (audioState) {
        case AudioPlayerState.BUFFERING:
          state = LoadingState(episode: episodeType);
          break;
        case AudioPlayerState.COMPLETED:
          state = StopState();
          break;
        case AudioPlayerState.PLAYING:
          state = PlayingState(episode: episodeType);
          break;
        case AudioPlayerState.PAUSED:
          state = PauseState();
          break;

        default:
          state = StopState();
      }
    });
    audioPodcastRepository.onDurationChanged.listen((dura) {
      durationChange = dura?.inSeconds?.toDouble();
    });
    audioPodcastRepository.onAudioPositionChanged.listen((position) {
      positionChange = position?.inSeconds?.toDouble();
    });
  }
  final AudioPodcastRepository _audioPodcastRepository;

  PodcastType podcastType;
  EpisodeType episodeType;
  double positionChange = 0.0;
  double durationChange = 0.0;

  Future<void> playUrl({
    @required EpisodeType episode,
    @required PodcastType podcast,
  }) async {
    // print('ANTES: ${podcastType?.title} -- AHORA: ${podcast.title}');
    // print('ANTES: ${episodeType?.title} -- AHORA: ${episode.title}');
    // print('$state');
    try {
      if (podcastType == null && episodeType == null && state is StopState) {
        this.episodeType = episode;
        this.podcastType = podcast;
        await _audioPodcastRepository.playUrl(audio: episode);
      } else if (episodeType != episode &&
          podcastType == podcast &&
          state is PlayingState) {
        this.episodeType = episode;
        this.podcastType = podcast;
        await _audioPodcastRepository.stop();
        await _audioPodcastRepository.playUrl(audio: episode);
      } else if (episodeType != episode &&
          podcastType != podcast &&
          state is PlayingState) {
        this.episodeType = episode;
        this.podcastType = podcast;
        await _audioPodcastRepository.stop();
        await _audioPodcastRepository.playUrl(audio: episode);
      } else if (episodeType != episode &&
          podcastType != podcast &&
          state is StopState) {
        this.episodeType = episode;
        this.podcastType = podcast;
        await _audioPodcastRepository.playUrl(audio: episode);
      } else if (episodeType != episode &&
          podcastType == podcast &&
          state is StopState) {
        this.episodeType = episode;
        this.podcastType = podcast;
        await _audioPodcastRepository.playUrl(audio: episode);
      } else if (podcastType != null &&
          episodeType != null &&
          state is ErrorState) {
        this.episodeType = episode;
        this.podcastType = podcast;
        await _audioPodcastRepository.playUrl(audio: episode);
      }
    } on AudioPlaybackError {
      state = ErrorState();
    }
  }

  Future<void> stop() async {
    try {
      await _audioPodcastRepository.stop();
      state = StopState();
    } on AudioPlaybackError {
      state = ErrorState();
    }
  }

  Future<void> pause() async {
    try {
      await _audioPodcastRepository.pause();
      state = PauseState();
    } on AudioPlaybackError {
      state = ErrorState();
    }
  }

  Future<void> release() async {
    try {
      await _audioPodcastRepository.release();
      state = StopState();
    } on AudioPlaybackError {
      state = ErrorState();
    }
  }

  Stream<double> percent() {
    return _audioPodcastRepository.onAudioPositionChanged.map((d) {
      final percent = d.inSeconds.toDouble() / durationChange;
      return percent;
    });
  }
}
