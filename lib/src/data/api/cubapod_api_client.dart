import '../../../core/error/exception.dart';
import '../models/category_type_model.dart';
import '../models/podcast_type_model.dart';
import '../api_client.dart';
import '../../domine/model/category_type.dart';
import '../../domine/model/podcast_type.dart';
import 'package:flutter/foundation.dart';
import 'package:graphql/client.dart';

import 'queries/queries.dart' as queries;

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

    final status = result.data['status'];

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
      throw StatusRequestFailure();
    }

    final map = result.data['categories'] as List;

    return map.map((e) => CategoryTypeModel.fromJson(e)).toList();
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

    return CategoryTypeModel.fromJson(result.data['category']);
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
    final response = result.data['podcast'];

    return PodcastTypeModel.fromJson(response);
  }

  @override
  Future<List<PodcastType>> getPodcastsList({
    @required String categorySlug,
  }) async {
    final options = QueryOptions(
      documentNode: gql(queries.qPodcasts_lite),
      variables: <String, dynamic>{
        'categorySlug': categorySlug,
        'page': 0,
      },
    );
    final result = await _graphQLClient.query(options);
    if (result.hasException) {
      throw StatusRequestFailure();
    }

    final map = result.data['podcasts'] as List;

    return map.map((e) => PodcastTypeModel.fromJson(e)).toList();
  }
}
