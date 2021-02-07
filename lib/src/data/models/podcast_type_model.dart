import 'package:cubapod/src/data/models/category_type_model.dart';
import 'package:cubapod/src/data/models/episodes_model.dart';
import 'package:cubapod/src/domine/model/podcast_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'podcast_type_model.g.dart';

/// Define a podcast
@JsonSerializable(explicitToJson: true)
class PodcastTypeModel extends PodcastType {
  final String slug;
  final String title;
  final String summary;
  final String subtitle;
  final String image;
  final String author;
  final int episodesCount;
  final CategoryTypeModel category;
  final EpisodesModel episodes;

  const PodcastTypeModel({
    this.slug,
    this.title,
    this.subtitle,
    this.author,
    this.image,
    this.summary,
    this.episodesCount,
    this.category,
    this.episodes,
  }) : super(
          slug: slug,
          title: title,
          subtitle: subtitle,
          author: author,
          image: image,
          summary: summary,
          episodesCount: episodesCount,
          category: category,
          episodes: episodes,
        );

  factory PodcastTypeModel.fromJson(Map<String, dynamic> json) =>
      _$PodcastTypeModelFromJson(json);

  Map<String, dynamic> toJson() => _$PodcastTypeModelToJson(this);

  @override
  String toString() {
    return '''
  PodcastTypeModel(
    slug: $slug,
    title: $title,
    subtitle: $subtitle,
    author: $author,
    image: $image,
    summary: $summary,
    episodesCount: $episodesCount,
    category: $category,
    episodes: $episodes,
  )
  ''';
  }
}
