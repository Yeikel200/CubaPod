// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoriesModel _$CategoriesModelFromJson(Map<String, dynamic> json) {
  return CategoriesModel(
    categories: (json['categories'] as List)
        ?.map((e) => e == null
            ? null
            : CategoryTypeModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CategoriesModelToJson(CategoriesModel instance) =>
    <String, dynamic>{
      'categories': instance.categories?.map((e) => e?.toJson())?.toList(),
    };
