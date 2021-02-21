part of 'audio_podcast_provider.dart';

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
