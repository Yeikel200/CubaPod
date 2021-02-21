part of 'podcast_list_provider.dart';

class PodcastListNotifier extends StateNotifier<PodcastListState> {
  PodcastListNotifier({GetPodcastsListUsecase getPodcastsListUsecase})
      : _getPodcastsListUsecase = getPodcastsListUsecase,
        super(InitialPodcastListState());
  final GetPodcastsListUsecase _getPodcastsListUsecase;

  List<PodcastListModel> podcastList = <PodcastListModel>[];
  List<String> prefCategorySelected = [];

  Future<void> getPodcastList({String categorySlug}) async {
    try {
      state = LoadingPodcastListState();
      final list = await _getPodcastsListUsecase(categorySlug: categorySlug);
      if (list.length > 0) {
        final newList = PodcastListModel(
            category: list[0].category.name, podcastList: list);
        podcastList.add(newList);
        state = LoadedPodcastListState(podcastList: podcastList);
      }
    } on StatusRequestFailure catch (_) {
      state = ErrorPodcastListState();
    }
  }

  void loadPodcastList() {
    if (prefCategorySelected.isNotEmpty) {
      prefCategorySelected
          .forEach((element) => this.getPodcastList(categorySlug: element));
    }
  }

  void deletePodcasts({String categorySlug}) {
    podcastList.removeWhere((elem) => elem.category == categorySlug);
  }
}

class PodcastListModel extends Equatable {
  PodcastListModel({this.category, this.podcastList});

  final String category;
  final List<PodcastType> podcastList;

  @override
  List<Object> get props => [category, podcastList];
}
