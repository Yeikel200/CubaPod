import 'package:cubapod/src/domine/model/podcast_type.dart';
import 'package:cubapod/src/domine/repository/podcast_repository.dart';

class GetPodcastsListUsecase {
  final PodcastRepository dataRepository;

  GetPodcastsListUsecase({this.dataRepository})
      : assert(dataRepository != null);

  Future<List<PodcastType>> call({String categorySlug}) async =>
      await dataRepository.getPodcastsList(categorySlug: categorySlug);
}
