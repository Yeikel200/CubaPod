import 'package:cubapod/src/data/podcast_player.dart';
import 'package:cubapod/src/domine/model/episode_type.dart';
import 'package:meta/meta.dart';

abstract class AudioPodcastRepository
    implements
        PodcastPlayerStete,
        PodcastOnAudioPositionChanged,
        PodcastOnDurationChanged {
  Future<void> playUrl({@required EpisodeType audio});
  Future<void> pause();
  Future<void> stop();
  Future<void> release();
  void dispose();
}

abstract class PodcastPlayerStete {
  Stream<AudioPlayerState> get onPlayerStateChanged;
}

abstract class PodcastOnAudioPositionChanged {
  Stream<Duration> get onAudioPositionChanged;
}

abstract class PodcastOnDurationChanged {
  Stream<Duration> get onDurationChanged;
}
