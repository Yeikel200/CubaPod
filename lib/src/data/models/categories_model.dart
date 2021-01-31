import 'package:cubapod/src/data/models/category_type_model.dart';
import 'package:cubapod/src/domine/model/categories.dart';
import 'package:json_annotation/json_annotation.dart';

part 'categories_model.g.dart';

@JsonSerializable(explicitToJson: true)
class CategoriesModel extends Categories {
  CategoriesModel({this.categories}) : super(categories: categories);

  final List<CategoryTypeModel> categories;

  factory CategoriesModel.fromJson(Map<String, dynamic> json) =>
      _$CategoriesModelFromJson(json);

  Map<String, dynamic> toJson() => _$CategoriesModelToJson(this);
}
