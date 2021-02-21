import 'dart:async';

import 'package:cubapod/core/error/exception.dart';
import 'package:cubapod/src/data/models/episode_type_model.dart';
import 'package:cubapod/src/domine/repository/audio_podcast_repository.dart';
import 'package:flutter_exoplayer/audio_notification.dart';
import 'package:flutter_exoplayer/audioplayer.dart';
import 'package:meta/meta.dart';

abstract class AudioPluging
    implements
        PodcastPlayerStete,
        PodcastOnAudioPositionChanged,
        PodcastOnDurationChanged {
  Future<void> playUrl({@required EpisodeTypeModel audio});
  Future<void> pause();
  Future<void> stop();
  Future<void> release();
  void dispose();
}

enum AudioPlayerState {
  RELEASED,
  STOPPED,
  BUFFERING,
  PLAYING,
  PAUSED,
  COMPLETED,
}

class PodcastPlayer extends AudioPluging {
  PodcastPlayer({@required AudioPlayer audioPlayer})
      : _audioPlayer = audioPlayer,
        assert(audioPlayer != null) {
    audioPlayer.onPlayerStateChanged.listen((state) {
      switch (state) {
        case PlayerState.RELEASED:
          _playerStateController.add(AudioPlayerState.RELEASED);
          break;
        case PlayerState.STOPPED:
          _playerStateController.add(AudioPlayerState.STOPPED);
          break;
        case PlayerState.BUFFERING:
          _playerStateController.add(AudioPlayerState.BUFFERING);
          break;
        case PlayerState.PLAYING:
          _playerStateController.add(AudioPlayerState.PLAYING);
          break;
        case PlayerState.PAUSED:
          _playerStateController.add(AudioPlayerState.PAUSED);
          break;
        case PlayerState.COMPLETED:
          _playerStateController.add(AudioPlayerState.COMPLETED);
          break;
        default:
          _playerStateController.add(AudioPlayerState.STOPPED);
      }
    });
  }

  final AudioPlayer _audioPlayer;

  final StreamController<AudioPlayerState> _playerStateController =
      StreamController<AudioPlayerState>.broadcast();

  @override
  Future<void> playUrl({@required EpisodeTypeModel audio}) async {
    final result = await _audioPlayer.play(
      audio.enclosure,
      playerMode: PlayerMode.FOREGROUND,
      audioNotification: AudioNotification(
        title: audio.title,
        subTitle: audio.getDate,
        smallIconFileName: "ic_launcher",
        largeIconUrl: audio.image,
        isLocal: false,
        notificationDefaultActions: NotificationDefaultActions.ALL,
        notificationCustomActions: NotificationCustomActions.TWO,
      ),
    );
    if (result == Result.ERROR || result == Result.FAIL) {
      throw AudioPlaybackError();
    }
  }

  @override
  Future<void> pause() async {
    final result = await _audioPlayer.pause();
    if (result == Result.ERROR || result == Result.FAIL) {
      throw AudioPlaybackError();
    }
  }

  @override
  Future<void> stop() async {
    final result = await _audioPlayer.stop();
    if (result == Result.ERROR || result == Result.FAIL) {
      throw AudioPlaybackError();
    }
  }

  @override
  Future<void> release() async {
    final result = await _audioPlayer.release();
    if (result == Result.ERROR || result == Result.FAIL) {
      throw AudioPlaybackError();
    }
  }

  @override
  Stream<AudioPlayerState> get onPlayerStateChanged =>
      _playerStateController.stream;

  @override
  void dispose() {
    _audioPlayer?.dispose();
    _playerStateController?.close();
  }

  @override
  Stream<Duration> get onAudioPositionChanged =>
      _audioPlayer.onAudioPositionChanged;

  @override
  Stream<Duration> get onDurationChanged => _audioPlayer.onDurationChanged;
}
