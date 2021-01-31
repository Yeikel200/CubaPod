// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_type_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryTypeModel _$CategoryTypeModelFromJson(Map<String, dynamic> json) {
  return CategoryTypeModel(
    name: json['name'] as String,
    slug: json['slug'] as String,
    description: json['description'] as String,
    img: json['img'] as String,
    color: json['color'] as String,
    podcastsCount: json['podcastsCount'] as int,
  );
}

Map<String, dynamic> _$CategoryTypeModelToJson(CategoryTypeModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'slug': instance.slug,
      'description': instance.description,
      'img': instance.img,
      'color': instance.color,
      'podcastsCount': instance.podcastsCount,
    };
