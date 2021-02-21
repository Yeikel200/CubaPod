import 'package:cubapod/core/platform/network_info.dart';
import 'package:cubapod/injector.dart';
import 'package:cubapod/src/data/api/cubapod_api_client.dart';
import 'package:cubapod/src/data/podcast_player.dart';
import 'package:cubapod/src/data/datasource/local_data_source.dart';
import 'package:cubapod/src/data/repository/audio_podcast_repository_impl.dart';
import 'package:cubapod/src/data/repository/podcast_repository_impl.dart';
import 'package:cubapod/src/domine/model/category_type.dart';
import 'package:cubapod/src/domine/repository/audio_podcast_repository.dart';
import 'package:cubapod/src/domine/repository/podcast_repository.dart';
import 'package:cubapod/src/domine/usecase/get_categories_list_usecase.dart';
import 'package:cubapod/src/domine/usecase/get_podcast_usecase.dart';
import 'package:cubapod/src/domine/usecase/get_podcasts_list_usecase.dart';
import 'package:cubapod/src/domine/usecase/get_status_usecase.dart';
import 'package:cubapod/src/presentation/application/audio_podcast_notifier.dart';
import 'package:cubapod/src/presentation/application/panel_control_notifier.dart';
import 'package:cubapod/src/presentation/application/podcast_notifier.dart';
import 'package:cubapod/src/presentation/application/podcasts_list_notifier.dart';
import 'package:cubapod/src/presentation/application/select_topic_notifier.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_exoplayer/audioplayer.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Grahpql Client
final clientGrahpqlRepositoryProvider =
    Provider((ref) => CubaPodApiClient.create());

// Repository
final podcastRepositoryProvider = Provider<PodcastRepository>((ref) {
  final client = ref.watch(clientGrahpqlRepositoryProvider);
  return PodcastRepositoryImpl(client: client);
});

final audioPodcastRepository = Provider<AudioPodcastRepository>((ref) {
  final pluging = ref.watch(audioPlugingProvider);
  return AudioPodcastRepositoryImpl(audioPluging: pluging);
});

// LocalDataSource
final localDataSourceProvider = Provider<LocalDataSource>((ref) {
  return LocalDataSourceImpl(sharedPreferences: sl<SharedPreferences>());
});

final selectedList = FutureProvider.autoDispose<List<CategoryType>>((ref) {
  return ref.watch(localDataSourceProvider).getSelectedCategoryList();
});

// Core
final sharedPreferencesFutureProvider = FutureProvider<SharedPreferences>(
    (ref) async => await SharedPreferences.getInstance());

final dataConnectionCheckerProvider = Provider<DataConnectionChecker>((ref) {
  return DataConnectionChecker();
});

final audioPlugingProvider = Provider<AudioPluging>((ref) {
  return PodcastPlayer(audioPlayer: AudioPlayer());
});

final customCacheManagerProvider = Provider<CacheManager>((ref) {
  const key = 'customCacheKey';
  return CacheManager(
    Config(
      key,
      stalePeriod: const Duration(days: 30),
      maxNrOfCacheObjects: 50,
      repo: JsonCacheInfoRepository(databaseName: key),
      //fileSystem: IOFileSystem(key),
      fileService: HttpFileService(),
    ),
  );
});

final networkInfo = Provider<NetworkInfo>((ref) {
  final dataConnection = ref.watch(dataConnectionCheckerProvider);
  return NetworkInfoImpl(dataConnection);
});

// Use-Case
final statusUsecaseProvider = Provider<GetStatusUsecase>((ref) {
  final repository = ref.watch(podcastRepositoryProvider);
  return GetStatusUsecase(dataRepository: repository);
});

// StateProvider
final searchCategoryList = StateProvider((ref) => '');

// StateNotifierProvider
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

final podcastsListStateNotifierProvider =
    StateNotifierProvider<PodcastListNotifier>((ref) {
  final repository = ref.watch(podcastRepositoryProvider);
  final podcasts = GetPodcastsListUsecase(dataRepository: repository);
  return PodcastListNotifier(getPodcastsListUsecase: podcasts);
});

final podcastDetailsStateNotifierProvider =
    StateNotifierProvider<PodcastDetailsNotifier>((ref) {
  final repository = ref.watch(podcastRepositoryProvider);
  final podcast = GetPodcastUsecase(dataRepository: repository);
  return PodcastDetailsNotifier(getPodcastUsecase: podcast);
});

final audioPodcastStateNotifierProvider =
    StateNotifierProvider<AudioPodcastNotifier>((ref) {
  final repository = ref.watch(audioPodcastRepository);
  ref.onDispose(() {
    repository.dispose();
  });
  return AudioPodcastNotifier(audioPodcastRepository: repository);
});

// ChengeNotifier
final panelControlNotifierProvider =
    ChangeNotifierProvider<ControlPanelNotifier>((ref) {
  return ControlPanelNotifier();
});

// FutureProvider
final statusProvider = FutureProvider<bool>((ref) async {
  final repository = ref.watch(podcastRepositoryProvider);
  final statusUsecase = GetStatusUsecase(dataRepository: repository);
  return statusUsecase();
});

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
  ref.watch(categoryListStateNotifierProvider).getCategoryList();
  return false;
});

// final podcastsListProvider = FutureProvider<List<PodcastType>>((ref) async {
//   final repository = ref.watch(podcastRepositoryProvider);
//   final getPodcastsListUsecase =
//       GetPodcastsListUsecase(dataRepository: repository);
//   final podcastsList = getPodcastsListUsecase(categorySlug: 'tecnologia');
//   return podcastsList;
// });

// final categoriesListProvider =
//     FutureProvider.autoDispose<List<CategoryTypeModel>>((ref) async {
//   final repository = ref.watch(podcastRepositoryProvider);
//   final getCategoriesListUsecase =
//       GetCategoriesListUsecase(dataRepository: repository);
//   final categoryList = await getCategoriesListUsecase();
//   return categoryList;
// });
