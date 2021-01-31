import 'package:cubapod/src/domine/repository/podcast_repository.dart';

class GetStatusUseCase {
  final PodcastRepository dataRepository;

  GetStatusUseCase({this.dataRepository}) : assert(dataRepository != null);

  Future<bool> call() async => await dataRepository.getStatus();
}
