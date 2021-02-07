import 'package:cubapod/core/platform/network_info.dart';
import 'package:cubapod/src/data/api/cubapod_api_client.dart';
import 'package:cubapod/src/data/api_client.dart';
import 'package:cubapod/src/data/repository/podcast_repository_impl.dart';
import 'package:cubapod/src/domine/repository/podcast_repository.dart';
import 'package:cubapod/src/domine/usecase/get_categories_list_usecase.dart';
import 'package:cubapod/src/domine/usecase/get_category_usecase.dart';
import 'package:cubapod/src/domine/usecase/get_podcast_usecase.dart';
import 'package:cubapod/src/domine/usecase/get_podcasts_list_usecase.dart';
import 'package:cubapod/src/domine/usecase/get_status_usecase.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

Future<void> setup() async {
  // External
  sl.registerLazySingleton(
    () => DataConnectionChecker(),
  );
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton<SharedPreferences>(
    () => sharedPreferences,
  );

  // Core
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(
        sl(),
      ));

  // Graphql Client
  sl.registerLazySingleton<ApiClinet>(
    () => CubaPodApiClient.create(),
  );

  // Data sources
  // sl.registerSingleton<LocalDataSource>(
  //   LocalDataSourceImpl(
  //       // sharedPreferences: sl(),
  //       ),
  // );

  // Repository
  sl.registerLazySingleton<PodcastRepository>(
    () => PodcastRepositoryImpl(client: sl<CubaPodApiClient>()),
  );

  // Features
  // Podcasts Screen

  // Audio Reprodution

  // Setting

  // Use case
  sl.registerLazySingleton(
    () => GetStatusUsecase(dataRepository: sl()),
  );
  sl.registerLazySingleton(
    () => GetCategoryUsecase(dataRepository: sl()),
  );
  sl.registerLazySingleton(
    () => GetCategoriesListUsecase(dataRepository: sl()),
  );
  sl.registerLazySingleton(
    () => GetPodcastUsecase(dataRepository: sl()),
  );
  sl.registerLazySingleton(
    () => GetPodcastsListUsecase(dataRepository: sl()),
  );
}
