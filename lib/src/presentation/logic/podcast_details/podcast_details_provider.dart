import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/error/exception.dart';
import '../../../../core/logic/core_provider.dart';
import '../../../data/models/podcast_type_model.dart';
import '../../../domine/usecase/get_podcast_usecase.dart';

part 'podcast_details_notifier.dart';
part 'podcast_details_state.dart';

final podcastDetailsStateNotifierProvider =
    StateNotifierProvider<PodcastDetailsNotifier>((ref) {
  final repository = ref.watch(podcastRepositoryProvider);
  final podcast = GetPodcastUsecase(dataRepository: repository);
  return PodcastDetailsNotifier(getPodcastUsecase: podcast);
});
