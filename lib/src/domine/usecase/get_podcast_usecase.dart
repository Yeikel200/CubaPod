import 'package:cubapod/src/domine/model/podcast_type.dart';
import 'package:cubapod/src/domine/repository/podcast_repository.dart';

class GetPodcastUsecase {
  final PodcastRepository dataRepository;

  GetPodcastUsecase({this.dataRepository}) : assert(dataRepository != null);

  Future<PodcastType> call({String podcastName}) async =>
      await dataRepository.getPodcast(podcastName: podcastName);
}
