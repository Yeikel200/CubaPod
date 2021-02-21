import 'package:cubapod/core/error/exception.dart';
import 'package:cubapod/src/domine/model/podcast_type.dart';
import 'package:cubapod/src/domine/usecase/get_podcasts_list_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class PodcastListState extends Equatable {
  const PodcastListState();
}

class InitialPodcastListState extends PodcastListState {
  const InitialPodcastListState();

  @override
  List<Object> get props => [];
}

class LoadingPodcastListState extends PodcastListState {
  const LoadingPodcastListState();

  @override
  List<Object> get props => [];
}

class LoadedPodcastListState extends PodcastListState {
  const LoadedPodcastListState({this.podcastList});

  final List<PodcastListModel> podcastList;

  @override
  List<Object> get props => [podcastList];
}

class ErrorPodcastListState extends PodcastListState {
  const ErrorPodcastListState();

  @override
  List<Object> get props => [];
}

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
