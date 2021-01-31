// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episodes_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EpisodesModel _$EpisodesModelFromJson(Map<String, dynamic> json) {
  return EpisodesModel(
    page: json['page'] as int,
    pages: json['pages'] as int,
    objects: (json['objects'] as List)
        ?.map((e) => e == null
            ? null
            : EpisodeTypeModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$EpisodesModelToJson(EpisodesModel instance) =>
    <String, dynamic>{
      'page': instance.page,
      'pages': instance.pages,
      'objects': instance.objects?.map((e) => e?.toJson())?.toList(),
    };
