import 'dart:async';

import 'package:cubapod/core/error/exception.dart';
import 'package:cubapod/src/data/podcast_player.dart';
import 'package:cubapod/src/data/repository/audio_podcast_repository_impl.dart';
import 'package:cubapod/src/domine/model/episode_type.dart';
import 'package:cubapod/src/domine/model/podcast_type.dart';
import 'package:cubapod/src/domine/repository/audio_podcast_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_exoplayer/audioplayer.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'audio_podcast_notifier.dart';
part 'audio_podcast_state.dart';

final audioPlugingProvider = Provider<AudioPluging>((ref) {
  return PodcastPlayer(audioPlayer: AudioPlayer());
});

final audioPodcastRepository = Provider<AudioPodcastRepository>((ref) {
  final pluging = ref.watch(audioPlugingProvider);
  return AudioPodcastRepositoryImpl(audioPluging: pluging);
});

final audioPodcastStateNotifierProvider =
    StateNotifierProvider<AudioPodcastNotifier>((ref) {
  final repository = ref.watch(audioPodcastRepository);
  ref.onDispose(() {
    repository.dispose();
  });
  return AudioPodcastNotifier(audioPodcastRepository: repository);
});
