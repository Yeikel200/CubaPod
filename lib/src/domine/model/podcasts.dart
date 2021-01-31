import 'package:cubapod/src/domine/model/podcast_type.dart';
import 'package:equatable/equatable.dart';

class Podcasts extends Equatable {
  const Podcasts({this.podcasts});

  final List<PodcastType> podcasts;

  @override
  List<Object> get props => [podcasts];
}
