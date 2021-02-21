part of 'podcast_list_provider.dart';

abstract class PodcastListState extends Equatable {
  const PodcastListState();
}

class InitialPodcastListState extends PodcastListState {
  const InitialPodcastListState();

  @override
  List<Object> get props => [];
}

class LoadingPodcastListState extends PodcastListState {
  const LoadingPodcastListState();

  @override
  List<Object> get props => [];
}

class LoadedPodcastListState extends PodcastListState {
  const LoadedPodcastListState({this.podcastList});

  final List<PodcastListModel> podcastList;

  @override
  List<Object> get props => [podcastList];
}

class ErrorPodcastListState extends PodcastListState {
  const ErrorPodcastListState();

  @override
  List<Object> get props => [];
}
