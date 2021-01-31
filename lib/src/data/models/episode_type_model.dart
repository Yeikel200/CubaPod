import 'package:cubapod/src/domine/model/episode_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'episode_type_model.g.dart';

@JsonSerializable()
class EpisodeTypeModel extends EpisodeType {
  const EpisodeTypeModel({
    String slug,
    String guid,
    String title,
    String summary,
    String enclosure,
    String link,
    String image,
    String itunesSeason,
    String itunesDuration,
    String publishedAt,
  }) : super(
          slug: slug,
          guid: guid,
          title: title,
          summary: summary,
          enclosure: enclosure,
          link: link,
          image: image,
          itunesDuration: itunesDuration,
          publishedAt: publishedAt,
        );

  factory EpisodeTypeModel.fromJson(Map<String, dynamic> data) =>
      _$EpisodeTypeModelFromJson(data);

  Map<String, dynamic> toJson() => _$EpisodeTypeModelToJson(this);
}
