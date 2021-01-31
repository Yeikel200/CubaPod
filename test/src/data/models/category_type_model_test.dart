import 'dart:convert';

import 'package:cubapod/src/data/models/category_type_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const tCategoryTypeModel = CategoryTypeModel(
    name: "Arte",
    slug: "arte",
    description: "Pódcasts para complacer tu sensibilidad artística",
    img: "categories/arts.png",
    color: "#7400B8",
    podcastsCount: 14,
  );

  final String tCategoryTypeJson =
      '''
{
  "name": "Arte",
  "slug": "arte",
  "description": "Pódcasts para complacer tu sensibilidad artística",
  "img": "categories/arts.png",
  "color": "#7400B8",
  "podcastsCount": 14
}''';

  final map = jsonDecode(tCategoryTypeJson);

  test('should return a valid model the fromJson method', () {
    final result = CategoryTypeModel.fromJson(map);

    expect(result, tCategoryTypeModel);
  });

  test('should return a JSON map containing the proper data', () {
    final result = tCategoryTypeModel.toJson();

    expect(result, map);
  });
}
