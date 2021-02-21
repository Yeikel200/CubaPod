import '../model/category_type.dart';
import '../repository/podcast_repository.dart';

class GetCategoriesListUsecase {
  final PodcastRepository dataRepository;

  GetCategoriesListUsecase({this.dataRepository})
      : assert(dataRepository != null);

  Future<List<CategoryType>> call() async =>
      await dataRepository.getCategoriesList();
}
