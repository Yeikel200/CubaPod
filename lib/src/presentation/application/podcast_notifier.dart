import 'package:cubapod/core/error/exception.dart';
import 'package:cubapod/src/data/models/podcast_type_model.dart';
import 'package:cubapod/src/domine/usecase/get_podcast_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class PodcastDetailsState extends Equatable {
  const PodcastDetailsState();
}

class InitialPodcastDetailsState extends PodcastDetailsState {
  const InitialPodcastDetailsState();
  @override
  List<Object> get props => [];
}

class LoadingPodcastDetailsState extends PodcastDetailsState {
  const LoadingPodcastDetailsState();

  @override
  List<Object> get props => [];
}

class LoadedPodcastDetailsState extends PodcastDetailsState {
  const LoadedPodcastDetailsState({@required this.podcastTypeModel});

  final PodcastTypeModel podcastTypeModel;

  @override
  List<Object> get props => [podcastTypeModel];
}

class ErrorPodcastDetailsState extends PodcastDetailsState {
  const ErrorPodcastDetailsState();

  @override
  List<Object> get props => [];
}

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
