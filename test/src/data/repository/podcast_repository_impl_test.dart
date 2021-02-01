import 'dart:convert';

import 'package:cubapod/src/data/api/cubapod_api_client.dart';
import 'package:cubapod/src/data/models/category_type_model.dart';
import 'package:cubapod/src/data/models/podcast_type_model.dart';
import 'package:cubapod/src/data/repository/podcast_repository_impl.dart';
import 'package:cubapod/src/domine/repository/podcast_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:cubapod/src/data/api/queries/queries.dart' as queries;

class MockCubaPodApiClient extends Mock implements CubaPodApiClient {}

void main() {
  MockCubaPodApiClient mockCubaPodApiClient;
  PodcastRepository podcastRepository;

  setUp(() {
    mockCubaPodApiClient = MockCubaPodApiClient();
    podcastRepository = PodcastRepositoryImpl(client: mockCubaPodApiClient);
  });

  final tCategoryTypeModel = CategoryTypeModel.fromJson(
      jsonDecode(queries.responseCategory)['category']);
  final dataCategory =
      jsonDecode(queries.responseCategories)['categories'] as List;

  final tCategoryTypeModelList =
      dataCategory.map((e) => CategoryTypeModel.fromJson(e)).toList();
  Map<String, dynamic> responseQuerie = jsonDecode(queries.responsePodcast);

  final tPodcastTypeModel =
      PodcastTypeModel.fromJson(responseQuerie['podcast']);
  final dataPodcast = jsonDecode(queries.responsePodcasts)['podcasts'] as List;

  final tPodcastsTypeModelList =
      dataPodcast.map((e) => PodcastTypeModel.fromJson(e)).toList();

  group('GetStatus ', () {
    test('get status when the QueryResult is "ok" ', () async {
      when(
        mockCubaPodApiClient.getStatus(),
      ).thenAnswer(
        (_) => Future.value(true),
      );

      final result = await podcastRepository.getStatus();

      expect(result, true);
    });
    test('get status when the [QueryResult] is not "ok" ', () async {
      when(
        mockCubaPodApiClient.getStatus(),
      ).thenAnswer(
        (_) => Future.value(false),
      );

      final result = await podcastRepository.getStatus();

      expect(result, false);
    });
  });

  group('GetCategory', () {
    test('get the details of an [CategoryType] object by knowing ist slug',
        () async {
      when(
        mockCubaPodApiClient.getCategory(categoryName: 'tecnologia'),
      ).thenAnswer(
        (_) => Future.value(tCategoryTypeModel),
      );

      final result =
          await podcastRepository.getCategory(categoryName: 'tecnologia');

      expect(result, tCategoryTypeModel);
    });
  });

  group('GetCategoriesList', () {
    test('get a list the all category in the plataform', () async {
      when(
        mockCubaPodApiClient.getCategoriesList(),
      ).thenAnswer((_) async => tCategoryTypeModelList);

      final result = await podcastRepository.getCategoriesList();

      expect(result, tCategoryTypeModelList);
    });
  });
  group('GetPodcast', () {
    test('get the details of an [PodcastType] object by knowing ist slug',
        () async {
      when(mockCubaPodApiClient.getPodcast(podcastName: 'El Bache')).thenAnswer(
        (_) => Future.value(tPodcastTypeModel),
      );

      final result =
          await podcastRepository.getPodcast(podcastName: 'El Bache');

      expect(result, tPodcastTypeModel);
    });
  });
  group('GetPodcastsList', () {
    test('get the list of an [PodcastType] object whose category is known',
        () async {
      when(mockCubaPodApiClient.getPodcastsList(categorySlug: 'tecnologia'))
          .thenAnswer((_) async => tPodcastsTypeModelList);

      final result =
          await podcastRepository.getPodcastsList(categorySlug: 'tecnologia');

      expect(result, tPodcastsTypeModelList);
    });
  });
}
