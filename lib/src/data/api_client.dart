import 'package:cubapod/src/domine/model/category_type.dart';
import 'package:cubapod/src/domine/model/podcast_type.dart';
import 'package:flutter/foundation.dart';

abstract class ApiClinet {
  Future<bool> getStatus();
  Future<CategoryType> getCategory({@required String categoryName});
  Future<List<CategoryType>> getCategoriesList();
  Future<PodcastType> getPodcast({@required String podcastName});
  Future<List<PodcastType>> getPodcastsList({@required String categorySlug});
}
