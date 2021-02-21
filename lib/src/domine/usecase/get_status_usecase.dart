import '../repository/podcast_repository.dart';

class GetStatusUsecase {
  final PodcastRepository dataRepository;

  GetStatusUsecase({this.dataRepository}) : assert(dataRepository != null);

  Future<bool> call() async => await dataRepository.getStatus();
}
