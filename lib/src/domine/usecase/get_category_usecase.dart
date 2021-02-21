import '../model/category_type.dart';
import '../repository/podcast_repository.dart';

class GetCategoryUsecase {
  final PodcastRepository dataRepository;

  GetCategoryUsecase({this.dataRepository}) : assert(dataRepository != null);

  Future<CategoryType> call({String categoryName}) async =>
      await dataRepository.getCategory(categoryName: categoryName);
}
