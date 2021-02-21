part of 'audio_podcast_provider.dart';

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
