import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../injector.dart';
import '../../src/data/api/cubapod_api_client.dart';
import '../../src/data/datasource/local_data_source.dart';
import '../../src/data/repository/podcast_repository_impl.dart';
import '../../src/domine/model/category_type.dart';
import '../../src/domine/repository/podcast_repository.dart';
import '../platform/network_info.dart';

// Grahpql Client
final clientGrahpqlRepositoryProvider =
    Provider((ref) => CubaPodApiClient.create());

// Repository
final podcastRepositoryProvider = Provider<PodcastRepository>((ref) {
  final client = ref.watch(clientGrahpqlRepositoryProvider);
  return PodcastRepositoryImpl(client: client);
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
