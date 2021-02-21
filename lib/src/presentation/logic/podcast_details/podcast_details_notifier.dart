part of 'podcast_details_provider.dart';

class PodcastDetailsNotifier extends StateNotifier<PodcastDetailsState> {
  PodcastDetailsNotifier({@required GetPodcastUsecase getPodcastUsecase})
      : _getPodcastUsecase = getPodcastUsecase,
        assert(getPodcastUsecase != null),
        super(InitialPodcastDetailsState());

  final GetPodcastUsecase _getPodcastUsecase;
  PodcastTypeModel podcastTypeModel;

  Future<void> getPodcastDeatails({@required String podcastSlug}) async {
    try {
      state = LoadingPodcastDetailsState();
      final result = await _getPodcastUsecase(podcastName: podcastSlug);
      podcastTypeModel = result;
      state = LoadedPodcastDetailsState(podcastTypeModel: podcastTypeModel);
    } on StatusRequestFailure catch (_) {
      state = ErrorPodcastDetailsState();
    }
  }
}
