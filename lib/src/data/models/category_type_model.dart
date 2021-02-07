import 'package:cubapod/src/domine/model/category_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'category_type_model.g.dart';

@JsonSerializable()
class CategoryTypeModel extends CategoryType {
  const CategoryTypeModel({
    String name,
    String slug,
    String description,
    String img,
    String color,
    int podcastsCount,
  }) : super(
          name: name,
          slug: slug,
          description: description,
          img: img,
          color: color,
          podcastsCount: podcastsCount,
        );

  factory CategoryTypeModel.fromJson(Map<String, dynamic> data) =>
      _$CategoryTypeModelFromJson(data);

  Map<String, dynamic> toJson() => _$CategoryTypeModelToJson(this);

  @override
  String toString() {
    return '''CategoryTypeModel(
    name: $name,
    slug: $slug,
    description: $description,
    img: $img,
    color: $color,
    podcastsCount: $podcastsCount,
)''';
  }
}
