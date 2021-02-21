import '../api_client.dart';
import '../../domine/model/podcast_type.dart';
import '../../domine/model/category_type.dart';
import '../../domine/repository/podcast_repository.dart';

class PodcastRepositoryImpl extends PodcastRepository {
  final ApiClinet client;

  PodcastRepositoryImpl({this.client});

  @override
  Future<bool> getStatus() async => await client.getStatus();

  @override
  Future<List<CategoryType>> getCategoriesList() async =>
      await client.getCategoriesList();

  @override
  Future<CategoryType> getCategory({String categoryName}) async {
    return await client.getCategory(categoryName: categoryName);
  }

  @override
  Future<PodcastType> getPodcast({String podcastName}) async {
    return await client.getPodcast(podcastName: podcastName);
  }

  @override
  Future<List<PodcastType>> getPodcastsList({String categorySlug}) async {
    return await client.getPodcastsList(categorySlug: categorySlug);
  }
}
