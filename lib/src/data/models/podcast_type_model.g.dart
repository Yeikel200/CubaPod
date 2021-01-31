// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'podcast_type_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PodcastTypeModel _$PodcastTypeModelFromJson(Map<String, dynamic> json) {
  return PodcastTypeModel(
    slug: json['slug'] as String,
    title: json['title'] as String,
    subtitle: json['subtitle'] as String,
    author: json['author'] as String,
    image: json['image'] as String,
    summary: json['summary'] as String,
    episodesCount: json['episodesCount'] as int,
    category: json['category'] == null
        ? null
        : CategoryTypeModel.fromJson(json['category'] as Map<String, dynamic>),
    episodes: json['episodes'] == null
        ? null
        : EpisodesModel.fromJson(json['episodes'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PodcastTypeModelToJson(PodcastTypeModel instance) =>
    <String, dynamic>{
      'slug': instance.slug,
      'title': instance.title,
      'summary': instance.summary,
      'subtitle': instance.subtitle,
      'image': instance.image,
      'author': instance.author,
      'episodesCount': instance.episodesCount,
      'category': instance.category?.toJson(),
      'episodes': instance.episodes?.toJson(),
    };
