import '../model/category_type.dart';
import '../model/podcast_type.dart';

abstract class PodcastRepository {
  //Future<Either<Failure, NumberTrivia>>
  Future<bool> getStatus();
  Future<CategoryType> getCategory({String categoryName});
  Future<List<CategoryType>> getCategoriesList();
  Future<PodcastType> getPodcast({String podcastName});
  Future<List<PodcastType>> getPodcastsList({String categorySlug});
}
