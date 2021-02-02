import 'package:cubapod/src/domine/model/category_type.dart';
import 'package:cubapod/src/domine/repository/podcast_repository.dart';

class GetCategoriesListUsecase {
  final PodcastRepository dataRepository;

  GetCategoriesListUsecase({this.dataRepository})
      : assert(dataRepository != null);

  Future<List<CategoryType>> call() async =>
      await dataRepository.getCategoriesList();
}
