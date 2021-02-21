import 'package:equatable/equatable.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/error/exception.dart';
import '../../../../core/logic/core_provider.dart';
import '../../../domine/model/podcast_type.dart';
import '../../../domine/usecase/get_podcasts_list_usecase.dart';

part 'podcast_list_notifier.dart';
part 'podcast_list_state.dart';

final podcastsListStateNotifierProvider =
    StateNotifierProvider<PodcastListNotifier>((ref) {
  final repository = ref.watch(podcastRepositoryProvider);
  final podcasts = GetPodcastsListUsecase(dataRepository: repository);
  return PodcastListNotifier(getPodcastsListUsecase: podcasts);
});
