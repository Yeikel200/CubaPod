import 'dart:convert';

import 'package:cubapod/core/error/exception.dart';
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

  group('GetStatus ', () {
    test('get status when the QueryResult is "ok" ', () async {
      when(
        mockGraphQLClient.query(any),
      ).thenAnswer((_) async => QueryResult(
            data: jsonDecode(queries.responseGetStatusTrue),
            exception: null,
            loading: false,
          ));

      final result = await cubaPodApiClient.getStatus();

      expect(result, true);
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
    test(
        'should return [StatusRequestFailure] when the call to client is not succes',
        () async {
      when(
        mockGraphQLClient.query(any),
      ).thenAnswer((_) async => QueryResult(
            data: null,
            exception: OperationException(),
            loading: false,
          ));

      try {
        await cubaPodApiClient.getStatus();
      } on Exception catch (e) {
        expect(e, isA<StatusRequestFailure>());
      }
    });
  });
  group('GetCategory ', () {
    final map = jsonDecode(queries.responseCategory)['category'];

    final tCategoryTypeModel = CategoryTypeModel.fromJson(map);

    test('get the details of an [CategoryType] object by knowing ist slug',
        () async {
      when(
        mockGraphQLClient.query(any),
      ).thenAnswer((_) async => QueryResult(
            data: jsonDecode(queries.responseCategory),
            exception: null,
            loading: false,
          ));

      final result =
          await cubaPodApiClient.getCategory(categoryName: 'tecnologia');

      expect(result, tCategoryTypeModel);
    });
    test(
        'should return [StatusRequestFailure] when the call to client is not succes',
        () async {
      when(
        mockGraphQLClient.query(any),
      ).thenAnswer((_) async => QueryResult(
            data: null,
            exception: OperationException(),
            loading: false,
          ));

      try {
        await cubaPodApiClient.getCategory(categoryName: 'tecnologia');
      } on Exception catch (e) {
        expect(e, isA<StatusRequestFailure>());
      }
    });
  });

  group('GetCategoriesList', () {
    final data = jsonDecode(queries.responseCategories)['categories'];
    final tCategoryTypeModelList =
        data.map((e) => CategoryTypeModel.fromJson(e)).toList();

    test('Get a list the all category in the plataform', () async {
      when(mockGraphQLClient.query(any)).thenAnswer((_) async => QueryResult(
            data: jsonDecode(queries.responseCategories),
            exception: null,
            loading: false,
          ));

      final result = await cubaPodApiClient.getCategoriesList();

      expect(result, tCategoryTypeModelList);
    });

    test(
        'should return [StatusRequestFailure] when the call to client is not succes',
        () async {
      when(mockGraphQLClient.query(any)).thenAnswer((_) async => QueryResult(
            data: null,
            exception: OperationException(),
            loading: false,
          ));

      try {
        await cubaPodApiClient.getCategoriesList();
      } on Exception catch (e) {
        expect(e, isA<StatusRequestFailure>());
      }
    });
  });

  group('GetPodcast ', () {
    final map = jsonDecode(queries.responsePodcast)['podcast'];
    final tPodcastTypeModel = PodcastTypeModel.fromJson(map);
    test('get the details of an [PodcastType] object by knowing ist slug',
        () async {
      when(
        mockGraphQLClient.query(any),
      ).thenAnswer((_) async => QueryResult(
            data: jsonDecode(queries.responsePodcast),
            exception: null,
            loading: false,
          ));

      final result =
          await cubaPodApiClient.getPodcast(podcastName: 'la-mente-creativa');

      expect(result, tPodcastTypeModel);
    });
    test(
        'should return [StatusRequestFailure] when the call to client is not succes',
        () async {
      when(
        mockGraphQLClient.query(any),
      ).thenThrow(StatusRequestFailure());

      final result =
          cubaPodApiClient.getPodcast(podcastName: 'la-mente-creativa');

      expect(result, throwsA(isA<StatusRequestFailure>()));
    });
  });

  group('GetPodcastsList', () {
    final data = jsonDecode(queries.responsePodcasts)['podcasts'] as List;

    final tPodcastsTypeModelList =
        data.map((e) => PodcastTypeModel.fromJson(e)).toList();

    test('get the list of an [PodcastType] object whose category is known',
        () async {
      when(
        mockGraphQLClient.query(any),
      ).thenAnswer((_) async => QueryResult(
            data: jsonDecode(queries.responsePodcasts),
            exception: null,
            loading: false,
          ));

      final result =
          await cubaPodApiClient.getPodcastsList(categorySlug: 'tecnologia');

      expect(result, tPodcastsTypeModelList);
    });

    test(
        'should return [StatusRequestFailure] when the call to client is not succes',
        () async {
      when(
        mockGraphQLClient.query(any),
      ).thenAnswer((_) async => QueryResult(
            data: null,
            exception: OperationException(),
            loading: false,
          ));

      try {
        await cubaPodApiClient.getPodcastsList(categorySlug: 'tecnologia');
      } on Exception catch (e) {
        expect(e, isA<StatusRequestFailure>());
      }
    });
  });
}
