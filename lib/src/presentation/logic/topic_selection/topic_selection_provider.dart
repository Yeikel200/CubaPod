import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/error/exception.dart';
import '../../../../core/logic/core_provider.dart';
import '../../../data/datasource/local_data_source.dart';
import '../../../domine/model/category_type.dart';
import '../../../domine/usecase/get_categories_list_usecase.dart';
import '../podcast_list/podcast_list_provider.dart';

part 'topic_model.dart';
part 'topic_selection_notifier.dart';
part 'topic_selection_state.dart';

final categoryListStateNotifierProvider =
    StateNotifierProvider.autoDispose<TopicsNotifier>((ref) {
  final repository = ref.watch(podcastRepositoryProvider);
  final localDataSource = ref.watch(localDataSourceProvider);
  final getPodcastsListUsecase =
      GetCategoriesListUsecase(dataRepository: repository);
  return TopicsNotifier(
    getCategoriesListUsecase: getPodcastsListUsecase,
    localDataSource: localDataSource,
  );
});

final searchCategoryList = StateProvider((ref) => '');

final cacheCatergoryListFutureProvider =
    FutureProvider.autoDispose<bool>((ref) async {
  final list =
      await ref.watch(localDataSourceProvider).getSelectedCategoryList();
  if (list.isNotEmpty) {
    var setList = Set<String>.from(list.map((e) => e.slug).toList());
    final podcasList = ref.read(podcastsListStateNotifierProvider);
    podcasList.prefCategorySelected.addAll(setList);
    podcasList.loadPodcastList();
    return true;
  }
  ref
      .watch(categoryListStateNotifierProvider)
      .getCategoryList(); //TODO: Refactorizar
  return false;
});
