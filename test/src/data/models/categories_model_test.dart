import 'dart:convert';

import 'package:cubapod/src/data/models/category_type_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final mapCategoriesList = jsonDecode(tCategoriesJson)['categories'] as List;
  test('should return a valid model the fromJson method', () {
    final result =
        mapCategoriesList.map((e) => CategoryTypeModel.fromJson(e)).toList();

    expect(result, tCategoriesModelList);
  });

  test('should return a JSON map containing the proper data', () {
    // act
    final result = tCategoriesModelList.map((c) => c.toJson());

    expect(result, mapCategoriesList);
  });

  // group('copyWith', () {
  //   final copyModel = HeadlinesModel(
  //       url: 'YUA',
  //       title: 'YUA',
  //       description: 'YUA',
  //       author: 'YUA',
  //       urlPhoto: 'YUA',
  //       categoryItem: 'YUA',
  //       pubDate: DateTime.now());

  //   test('should clone a valid model', () {
  //     final newHeadlineModel =
  //         tHeadlineModel.copyWith(headlinesModel: copyModel);

  //     expect(newHeadlineModel, copyModel);
  //   });

  //   test('should clone a valid model into the list', () {
  //     for (int i = 0; i < tHeadlineModelList.length; i++) {
  //       if (tHeadlineModelList[i].categoryItem == 'En Villa Clara') {
  //         tHeadlineModelList[i] = tHeadlineModelList[i].copyWith(
  //           headlinesModel: copyModel,
  //         );
  //       }
  //     }

  //     expect(tHeadlineModelList[3], copyModel);
  //     expect(tHeadlineModelList[2], copyModel);
  //   });
  // });
}

const tCategoriesJson =
    '''{
"categories": [
    {
      "name": "Arte",
      "slug": "arte",
      "description": "Pódcasts para complacer tu sensibilidad artística",
      "img": "categories/arts.png",
      "color": "#7400B8",
      "podcastsCount": 14
    },
    {
        "name": "Ciencia",
        "slug": "ciencia",
        "description": "Camina de la mano con quienes te explican el mundo",
        "img": "categories/sciences.png",
        "color": "#2C699A",
        "podcastsCount": 2
    },
    {
        "name": "Cine y televisión",
        "slug": "cine-y-television",
        "description": "Pódcasts, cámaras, ¡acción!",
        "img": "categories/tv-and-films.png",
        "color": "#F72585",
        "podcastsCount": 2
    }
  ]
}''';

const tCategoriesModelList = [
  CategoryTypeModel(
      name: "Arte",
      slug: "arte",
      description: "Pódcasts para complacer tu sensibilidad artística",
      img: "categories/arts.png",
      color: "#7400B8",
      podcastsCount: 14),
  CategoryTypeModel(
      name: "Ciencia",
      slug: "ciencia",
      description: "Camina de la mano con quienes te explican el mundo",
      img: "categories/sciences.png",
      color: "#2C699A",
      podcastsCount: 2),
  CategoryTypeModel(
      name: "Cine y televisión",
      slug: "cine-y-television",
      description: "Pódcasts, cámaras, ¡acción!",
      img: "categories/tv-and-films.png",
      color: "#F72585",
      podcastsCount: 2),
];
