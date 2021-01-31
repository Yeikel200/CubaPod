import 'dart:convert';

import 'package:cubapod/src/data/models/category_type_model.dart';
import 'package:cubapod/src/data/models/podcast_type_model.dart';
import 'package:cubapod/src/data/api_client.dart';
import 'package:cubapod/src/domine/model/category_type.dart';
import 'package:cubapod/src/domine/model/podcast_type.dart';
import 'package:flutter/foundation.dart';
import 'package:graphql/client.dart';

import 'package:cubapod/src/data/api/queries/queries.dart' as queries;

class GetPodcastRequestFailure implements Exception {}

class StatusRequestFailure implements Exception {}

class CubaPodApiClient extends ApiClinet {
  CubaPodApiClient({GraphQLClient graphQLClient})
      : assert(graphQLClient != null),
        _graphQLClient = graphQLClient;

  factory CubaPodApiClient.create() {
    final httpLink = HttpLink(uri: 'https://api.cubapod.net');
    final link = Link.from([httpLink]);
    return CubaPodApiClient(
      graphQLClient: GraphQLClient(cache: InMemoryCache(), link: link),
    );
  }

  final GraphQLClient _graphQLClient;

  @override
  Future<bool> getStatus() async {
    final result = await _graphQLClient
        .query(QueryOptions(documentNode: gql(queries.qGetStatus)));
    if (result.hasException) {
      throw StatusRequestFailure();
    }

    final status = result.data['data']['status'];

    if (status == 'ok') {
      return true;
    }
    return false;
  }

  @override
  Future<List<CategoryType>> getCategoriesList() async {
    final options = QueryOptions(
      documentNode: gql(queries.qCategories),
    );

    final result = await _graphQLClient.query(options);
    if (result.hasException) {
      throw GetPodcastRequestFailure();
    }
    final data =
        jsonDecode(queries.responseCategories)['data']['categories'] as List;

    return data.map((e) => CategoryTypeModel.fromJson(e)).toList();
  }

  @override
  Future<CategoryType> getCategory({@required String categoryName}) async {
    assert(categoryName != null, 'Param "categoryName" is NULL');

    final options = QueryOptions(
      documentNode: gql(queries.qCategory),
      variables: <String, dynamic>{
        'slug': categoryName,
      },
    );
    final result = await _graphQLClient.query(options);
    if (result.hasException) {
      throw StatusRequestFailure();
    }
    final response = jsonDecode(result.data);

    return CategoryTypeModel.fromJson(response['data']['category']);
  }

  @override
  Future<PodcastType> getPodcast({@required String podcastName}) async {
    final options = QueryOptions(
      documentNode: gql(queries.qPodcast),
      variables: <String, dynamic>{
        'slug': podcastName,
      },
    );
    final result = await _graphQLClient.query(options);
    if (result.hasException) {
      throw StatusRequestFailure();
    }
    final response = jsonDecode(result.data);

    return PodcastTypeModel.fromJson(response['data']['podcast']);
  }

  @override
  Future<List<PodcastType>> getPodcastsList({
    @required String categorySlug,
  }) async {
    final options = QueryOptions(
      documentNode: gql(queries.qPodcasts),
      variables: <String, dynamic>{
        'categorySlug': categorySlug,
      },
    );
    final result = await _graphQLClient.query(options);
    if (result.hasException) {
      throw GetPodcastRequestFailure();
    }
    final data =
        jsonDecode(queries.responsePodcasts)['data']['podcasts'] as List;

    return data.map((e) => PodcastTypeModel.fromJson(e)).toList();
  }
}
