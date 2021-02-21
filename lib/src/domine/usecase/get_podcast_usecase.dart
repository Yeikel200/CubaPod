import '../model/podcast_type.dart';
import '../repository/podcast_repository.dart';

class GetPodcastUsecase {
  final PodcastRepository dataRepository;

  GetPodcastUsecase({this.dataRepository}) : assert(dataRepository != null);

  Future<PodcastType> call({String podcastName}) async =>
      await dataRepository.getPodcast(podcastName: podcastName);
}
