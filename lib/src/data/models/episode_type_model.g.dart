// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode_type_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EpisodeTypeModel _$EpisodeTypeModelFromJson(Map<String, dynamic> json) {
  return EpisodeTypeModel(
    slug: json['slug'] as String,
    guid: json['guid'] as String,
    title: json['title'] as String,
    summary: _deleteHtml(json['summary'] as String ?? ' '),
    enclosure: json['enclosure'] as String,
    link: json['link'] as String,
    image: json['image'] as String,
    itunesDuration: json['itunesDuration'] as String,
    publishedAt: json['publishedAt'] as String,
  );
}

Map<String, dynamic> _$EpisodeTypeModelToJson(EpisodeTypeModel instance) =>
    <String, dynamic>{
      'slug': instance.slug,
      'guid': instance.guid,
      'title': instance.title,
      'summary': instance.summary,
      'enclosure': instance.enclosure,
      'link': instance.link,
      'image': instance.image,
      'itunesDuration': instance.itunesDuration,
      'publishedAt': instance.publishedAt,
    };

String _deleteHtml(String desc) {
  desc = desc?.replaceAll(
      RegExp(r'<[^>]*>', multiLine: true, caseSensitive: true), '');
  desc = desc.replaceAll('\\r\\n', '');
  desc = desc.replaceAll('\\n', '');
  desc = desc.replaceAll('\\r', '');
  return desc;
}
