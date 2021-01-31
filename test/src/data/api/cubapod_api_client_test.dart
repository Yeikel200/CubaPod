import 'dart:convert';

import 'package:cubapod/src/data/api/cubapod_api_client.dart';
import 'package:cubapod/src/data/models/category_type_model.dart';
import 'package:cubapod/src/data/models/podcast_type_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:mockito/mockito.dart';

import 'package:cubapod/src/data/api/queries/queries.dart' as queries;

import 'package:http/http.dart' as http;

class MockHttpClient extends Mock implements http.Client {}

class MockGraphQLClient extends Mock implements GraphQLClient {}

void main() {
  CubaPodApiClient cubaPodApiClient;
  MockGraphQLClient mockGraphQLClient;

  setUp(() {
    mockGraphQLClient = MockGraphQLClient();
    // cubaPodApiClient = CubaPodApiClient.create();
    cubaPodApiClient = CubaPodApiClient(graphQLClient: mockGraphQLClient);
  });

  // Map<String, dynamic> response = jsonDecode(queries.responseGetStatus);
  //final status = response['data'];

  group('GetStatus ', () {
    test('get status when the QueryResult is "ok" ', () async {
      //parseString();
      when(
        mockGraphQLClient.query(any),
      ).thenAnswer((_) async => QueryResult(
            data: jsonDecode(queries.responseGetStatusTrue),
            exception: null,
            loading: false,
          ));

      final result = await cubaPodApiClient.getStatus();

      expect(
        result,
        true,
      );
    });

    test('get status when the result is not "ok" ', () async {
      when(
        mockGraphQLClient.query(any),
      ).thenAnswer((_) async => QueryResult(
            data: jsonDecode(queries.responseGetStatusFalse),
            exception: null,
            loading: false,
          ));

      final result = await cubaPodApiClient.getStatus();

      expect(result, false);
    });
  });

  group('GetCategory ', () {
    final map = jsonDecode(queries.responseCategory)['data']['category'];

    final tCategoryTypeModel = CategoryTypeModel.fromJson(map);

    test('when pass a param', () async {
      when(
        mockGraphQLClient.query(any),
      ).thenAnswer((_) async => QueryResult(
            data: queries.responseCategory,
            exception: null,
            loading: false,
          ));

      final result =
          await cubaPodApiClient.getCategory(categoryName: 'tecnologia');

      expect(
        result,
        tCategoryTypeModel,
      );
    });
  });

  group('GetCategoriesList', () {
    final data =
        jsonDecode(queries.responseCategories)['data']['categories'] as List;

    final tCategoryTypeModelList =
        data.map((e) => CategoryTypeModel.fromJson(e)).toList();

    test('Get a list the all category in the plataform', () async {
      when(
        mockGraphQLClient.query(any),
      ).thenAnswer((_) async => QueryResult(
            data: queries.responseCategories,
            exception: null,
            loading: false,
          ));

      final result = await cubaPodApiClient.getCategoriesList();

      expect(result, tCategoryTypeModelList);
    });
  });

  group('GetPodcast ', () {
    final map = jsonDecode(queries.responsePodcast)['data']['podcast'];
    //print(map);
    final tPodcastTypeModel = PodcastTypeModel.fromJson(map);
    test('when pass a param', () async {
      when(
        mockGraphQLClient.query(any),
      ).thenAnswer((_) async => QueryResult(
            data: queries.responsePodcast,
            exception: null,
            loading: false,
          ));

      final result =
          await cubaPodApiClient.getPodcast(podcastName: 'la-mente-creativa');

      expect(
        result,
        tPodcastTypeModel,
      );
    });
  });

  group('GetPodcastsList', () {
    final data =
        jsonDecode(queries.responsePodcasts)['data']['podcasts'] as List;

    final tPodcastsTypeModelList =
        data.map((e) => PodcastTypeModel.fromJson(e)).toList();

    test('Get a list the podcasts', () async {
      when(
        mockGraphQLClient.query(any),
      ).thenAnswer((_) async => QueryResult(
            data: queries.responsePodcasts,
            exception: null,
            loading: false,
          ));

      final result =
          await cubaPodApiClient.getPodcastsList(categorySlug: 'tecnologia');

      expect(result, tPodcastsTypeModelList);
    });
  });
}
