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
    final tCategoryTypeModel = CategoryTypeModel.fromJson(
        jsonDecode(queries.responseCategory)['data']['category']);
    final data =
        jsonDecode(queries.responseCategories)['data']['categories'] as List;

    final tCategoryTypeModelList =
        data.map((e) => CategoryTypeModel.fromJson(e)).toList();

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

    test('get a list the all category in the plataform', () async {
      when(
        mockCubaPodApiClient.getCategoriesList(),
      ).thenAnswer((_) async => tCategoryTypeModelList);

      final result = await podcastRepository.getCategoriesList();

      expect(result, tCategoryTypeModelList);
    });
  });

  group('GetPodcast', () {
    Map<String, dynamic> responseQuerie = jsonDecode(queries.responsePodcast);

    final tPodcastTypeModel =
        PodcastTypeModel.fromJson(responseQuerie['data']['podcast']);
    final data =
        jsonDecode(queries.responsePodcasts)['data']['podcasts'] as List;

    final tPodcastsTypeModelList =
        data.map((e) => PodcastTypeModel.fromJson(e)).toList();

    test('get the details of an [PodcastType] object by knowing ist slug',
        () async {
      when(mockCubaPodApiClient.getPodcast(podcastName: 'El Bache')).thenAnswer(
        (_) => Future.value(tPodcastTypeModel),
      );

      final result =
          await podcastRepository.getPodcast(podcastName: 'El Bache');

      expect(result, tPodcastTypeModel);
    });

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
