import '../podcast_player.dart';
import '../../domine/model/episode_type.dart';
import '../../domine/repository/audio_podcast_repository.dart';
import 'package:flutter/foundation.dart';

class AudioPodcastRepositoryImpl extends AudioPodcastRepository {
  AudioPodcastRepositoryImpl({@required AudioPluging audioPluging})
      : _audioPluging = audioPluging,
        assert(audioPluging != null);

  final AudioPluging _audioPluging;

  @override
  Future<void> playUrl({EpisodeType audio}) async =>
      await _audioPluging.playUrl(audio: audio);

  @override
  Future<void> pause() async => await _audioPluging.pause();

  @override
  Future<void> stop() async => await _audioPluging.stop();

  @override
  Future<void> release() async => await _audioPluging.release();

  @override
  Stream<AudioPlayerState> get onPlayerStateChanged =>
      _audioPluging.onPlayerStateChanged;

  @override
  void dispose() {
    _audioPluging.dispose();
  }

  @override
  Stream<Duration> get onAudioPositionChanged =>
      _audioPluging.onAudioPositionChanged;

  @override
  Stream<Duration> get onDurationChanged => _audioPluging.onDurationChanged;
}
