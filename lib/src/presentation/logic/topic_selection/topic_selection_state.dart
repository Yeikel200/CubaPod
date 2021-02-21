part of 'topic_selection_provider.dart';

abstract class TopicsState extends Equatable {
  const TopicsState();
}

class InitialTopicsState extends TopicsState {
  const InitialTopicsState();
  @override
  List<Object> get props => [];
}

class LoadingTopicsState extends TopicsState {
  const LoadingTopicsState();
  @override
  List<Object> get props => [];
}

class LoadedTopicsState extends TopicsState {
  LoadedTopicsState({this.topicsList});

  final List<TopicModel> topicsList;
  @override
  List<Object> get props => [topicsList];
}

class ErrorTopicsState extends TopicsState {
  const ErrorTopicsState(this.message);
  final String message;
  @override
  List<Object> get props => [];
}
