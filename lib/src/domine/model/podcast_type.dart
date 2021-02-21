import 'category_type.dart';
import 'episodes.dart';
import 'package:equatable/equatable.dart';

class PodcastType extends Equatable {
  final String slug;
  final String title;
  final String subtitle;
  final String image;
  final String author;
  final String summary;
  final int episodesCount;
  final CategoryType category;
  final Episodes episodes;

  const PodcastType({
    this.slug,
    this.title,
    this.subtitle,
    this.image,
    this.author,
    this.summary,
    this.episodesCount,
    this.category,
    this.episodes,
  });

  @override
  List<Object> get props => [
        slug,
        title,
        subtitle,
        image,
        author,
        summary,
        episodesCount,
        category,
        episodes,
      ];
}
