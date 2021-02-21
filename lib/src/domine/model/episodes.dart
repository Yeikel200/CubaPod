import 'episode_type.dart';
import 'package:equatable/equatable.dart';

class Episodes extends Equatable {
  final int page;
  final int pages;
  final List<EpisodeType> objects;

  const Episodes({this.page, this.pages, this.objects});

  @override
  List<Object> get props => [page, pages, objects];
}
