part of 'podcast_details_provider.dart';

abstract class PodcastDetailsState extends Equatable {
  const PodcastDetailsState();
}

class InitialPodcastDetailsState extends PodcastDetailsState {
  const InitialPodcastDetailsState();
  @override
  List<Object> get props => [];
}

class LoadingPodcastDetailsState extends PodcastDetailsState {
  const LoadingPodcastDetailsState();

  @override
  List<Object> get props => [];
}

class LoadedPodcastDetailsState extends PodcastDetailsState {
  const LoadedPodcastDetailsState({@required this.podcastTypeModel});

  final PodcastTypeModel podcastTypeModel;

  @override
  List<Object> get props => [podcastTypeModel];
}

class ErrorPodcastDetailsState extends PodcastDetailsState {
  const ErrorPodcastDetailsState();

  @override
  List<Object> get props => [];
}
