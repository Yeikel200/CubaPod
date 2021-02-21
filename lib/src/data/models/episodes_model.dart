import 'episode_type_model.dart';
import '../../domine/model/episodes.dart';
import 'package:json_annotation/json_annotation.dart';

part 'episodes_model.g.dart';

@JsonSerializable(explicitToJson: true)
class EpisodesModel extends Episodes {
  const EpisodesModel({
    this.page,
    this.pages,
    this.objects,
  }) : super(
          page: page,
          pages: pages,
          objects: objects,
        );
  final int page;
  final int pages;
  final List<EpisodeTypeModel> objects;

  factory EpisodesModel.fromJson(Map<String, dynamic> data) =>
      _$EpisodesModelFromJson(data);

  Map<String, dynamic> toJson() => _$EpisodesModelToJson(this);

  @override
  String toString() {
    return '''
  EpisodesModel(
    page: $page,
    pages: $pages,
    objects: $objects,
      );''';
  }
}
