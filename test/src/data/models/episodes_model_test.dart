import 'dart:convert';

import 'package:cubapod/src/data/models/episodes_model.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:cubapod/src/data/api/queries/queries.dart' as queries;

import 'podcast_type_model_test.dart';

void main() {
  final mapPodcastTypeModel =
      jsonDecode(queries.responsePodcast)['data']['podcast']['episodes'];
  test('should return a valid model the [fromJson] method', () async {
    //print(mapPodcastTypeModel);
    final result = EpisodesModel.fromJson(mapPodcastTypeModel);

    expect(result, tPodcastTypeModel.episodes);
  });
  test('should return a JSON map containing the proper data', () async {
    //print(mapPodcastTypeModel);
    final result = tPodcastTypeModel.episodes.toJson();

    expect(result, mapPodcastTypeModel);
  });
}
