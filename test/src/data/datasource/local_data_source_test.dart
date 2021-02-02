import 'dart:convert';

import 'package:cubapod/core/error/exception.dart';
import 'package:cubapod/src/data/datasource/local_data_source.dart';
import 'package:cubapod/src/data/models/category_type_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:cubapod/src/data/api/queries/queries.dart' as queries;

class MockSharedPreferences extends Mock implements SharedPreferences {}

void main() {
  LocalDataSource dataSource;
  MockSharedPreferences mockSharedPreferences;
  setUp(() {
    mockSharedPreferences = MockSharedPreferences();
    dataSource = LocalDataSourceImpl(
      sharedPreferences: mockSharedPreferences,
    );
  });

  final tDataCategory =
      jsonDecode(queries.responseCategories)['categories'] as List;
  final tCategoryTypeModelList =
      tDataCategory.map((e) => CategoryTypeModel.fromJson(e)).toList();

  group('getSelectedCategoryList', () {
    test(
        'should return List of CategoryTypeModel from SharedPreferences when there is one in the cache',
        () async {
      // arrange
      when(mockSharedPreferences.getStringList(any))
          .thenReturn(tCategoryTypeModelStringList);

      // act
      final result = await dataSource.getSelectedCategoryList();

      // assert
      verify(mockSharedPreferences.getStringList(SP_SELECTED_CATEGORY_LIST));
      expect(result, equals(tCategoryTypeModelList));
    });
    test('should throw a CacheExeption when there is not a cached value',
        () async {
      // arrange
      when(mockSharedPreferences.getStringList(any)).thenReturn(null);

      // act
      final result = dataSource.getSelectedCategoryList;

      // assert
      expect(() => result(), throwsA(isA<CacheException>()));
    });
  });

  group('saveSelectedCategoryList', () {
    test('should call SharedPreferences to save the data in cache', () {
      dataSource.saveSelectedCategoryList(
          favoriteCategoriesList: tCategoryTypeModelList);
      // assert
      final expectedJsonStringList =
          tCategoryTypeModelList.map((e) => json.encode(e.toJson())).toList();
      verify(mockSharedPreferences.setStringList(
          SP_SELECTED_CATEGORY_LIST, expectedJsonStringList));
    });
  });

  group('saveIsCategoriesSelected', () {
    test('should call SharedPreferences to save the data in cache', () {
      dataSource.saveIsCategoriesSelected(selected: true);

      verify(mockSharedPreferences.setBool(SP_IS_CATEGORIES_SELECTED, true));
    });
  });

  group('isCategoriesSelected', () {
    test(
        'should return a bool from SharedPreferences when there is one in the cache',
        () async {
      // arrange
      when(mockSharedPreferences.getBool(any)).thenReturn(true);

      // act
      final result = await dataSource.isCategoriesSelected();
      print(result);
      // assert
      verify(mockSharedPreferences.getBool(SP_IS_CATEGORIES_SELECTED));
      expect(result, equals(true));
    });

    test('should return false when there is not a cached value', () async {
      // arrange
      when(mockSharedPreferences.getBool(any)).thenReturn(null);

      // act
      final result = await dataSource.isCategoriesSelected();

      // assert
      expect(result, false);
    });
  });
}

const tCategoryTypeModelStringList = [
  '''
  {
          "name": "Arte",
          "slug": "arte",
          "description": "Pódcasts para complacer tu sensibilidad artística",
          "img": "categories/arts.png",
          "color": "#7400B8",
          "podcastsCount": 14
      }''',
  '''
      {
          "name": "Ciencia",
          "slug": "ciencia",
          "description": "Camina de la mano con quienes te explican el mundo",
          "img": "categories/sciences.png",
          "color": "#2C699A",
          "podcastsCount": 2
      }''',
  '''
      {
          "name": "Cine y televisión",
          "slug": "cine-y-television",
          "description": "Pódcasts, cámaras, ¡acción!",
          "img": "categories/tv-and-films.png",
          "color": "#F72585",
          "podcastsCount": 2
      }''',
  '''
      {
          "name": "Comedia",
          "slug": "comedia",
          "description": "Pódcasts para divertirte y soltar unas risas",
          "img": "categories/comedy.png",
          "color": "#F050AE",
          "podcastsCount": 4
      }''',
  '''
      {
          "name": "Crimen real",
          "slug": "crimen-real",
          "description": "Crímenes de la vida real analizados por podcasters cubanos",
          "img": "categories/true-crime.png",
          "color": "#0C0F0A",
          "podcastsCount": 0
      }''',
  '''
      {
          "name": "Deportes",
          "slug": "deportes",
          "description": "Escucha y vive la pasión de tus deportes favoritos",
          "img": "categories/sports.png",
          "color": "#FFAB00",
          "podcastsCount": 17
      }''',
  '''
      {
          "name": "Educación",
          "slug": "educacion",
          "description": "Descubre, aprende y crece",
          "img": "categories/education.png",
          "color": "#D883FF",
          "podcastsCount": 11
      }''',
  '''
      {
          "name": "Ficción",
          "slug": "ficcion",
          "description": "Imaginación, creación e historias",
          "img": "categories/fiction.png",
          "color": "#177E89",
          "podcastsCount": 2
      }''',
  '''
      {
          "name": "Gobierno",
          "slug": "gobierno",
          "description": "Adéntrate en análisis de temas gubernamentales",
          "img": "categories/government.png",
          "color": "#084C61",
          "podcastsCount": 1
      }''',
  '''
      {
          "name": "Historia",
          "slug": "historia",
          "description": "El gran relato de la humanidad",
          "img": "categories/history.png",
          "color": "#DB3A34",
          "podcastsCount": 2
      }''',
  '''
      {
          "name": "Música",
          "slug": "musica",
          "description": "Pódcasts para los melómanos",
          "img": "categories/music.png",
          "color": "#FFC857",
          "podcastsCount": 7
      }''',
  '''
      {
          "name": "Negocios",
          "slug": "negocios",
          "description": "Tiempo bien invertido",
          "img": "categories/businesses.png",
          "color": "#323031",
          "podcastsCount": 9
      }''',
  '''
      {
          "name": "Noticias",
          "slug": "noticias",
          "description": "Lo que está pasando y por qué debería importarte",
          "img": "categories/news.png",
          "color": "#031E3A",
          "podcastsCount": 16
      }''',
  '''
      {
          "name": "Ocio",
          "slug": "ocio",
          "description": "A veces, hay que dejarlo todo y escuchar un pódcast",
          "img": "categories/leisure.png",
          "color": "#00D5E0",
          "podcastsCount": 8
      }''',
  '''
      {
          "name": "Religión y espiritualidad",
          "slug": "religion-y-espiritualidad",
          "description": "De tus oídos a tu alma",
          "img": "categories/religion-and-spirituality.png",
          "color": "#3A0CA3",
          "podcastsCount": 7
      }''',
  '''
      {
          "name": "Salud y bienestar",
          "slug": "salud-y-bienestar",
          "description": "Mente sana en cuerpo sano",
          "img": "categories/health-and-wellbeing.png",
          "color": "#4361EE",
          "podcastsCount": 6
      }''',
  '''
      {
          "name": "Sociedad y cultura",
          "slug": "sociedad-y-cultura",
          "description": "Quiénes somos, qué hacemos, cómo vivimos",
          "img": "categories/society-and-culture.png",
          "color": "#EF476F",
          "podcastsCount": 29
      }''',
  '''
      {
          "name": "Tecnología",
          "slug": "tecnologia",
          "description": "La actualidad de la innovación tecnológica",
          "img": "categories/technology.png",
          "color": "#33A8C7",
          "podcastsCount": 16
      }
  ''',
];
