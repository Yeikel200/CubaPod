import 'package:equatable/equatable.dart';

/// Defines an episode belonging to a podcast.
class EpisodeType extends Equatable {
  final String slug;
  final String guid;
  final String title;
  final String summary;
  final String enclosure;
  final String link;
  final String image;
  final String itunesDuration;
  final String publishedAt;

  const EpisodeType({
    this.slug,
    this.guid,
    this.title,
    this.summary,
    this.enclosure,
    this.link,
    this.image,
    this.itunesDuration,
    this.publishedAt,
  });

  @override
  List<Object> get props => [
        slug,
        guid,
        title,
        summary,
        enclosure,
        link,
        image,
        itunesDuration,
        publishedAt,
      ];
}
