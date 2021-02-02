import 'dart:convert';

import 'package:cubapod/src/data/models/category_type_model.dart';
import 'package:cubapod/src/domine/repository/podcast_repository.dart';
import 'package:cubapod/src/domine/usecase/get_categories_list_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../utility.dart';

class MockPodcastRepository extends Mock implements PodcastRepository {}

void main() {
  MockPodcastRepository mockPodcastRepository;
  GetCategoriesListUsecase getCategoriesListUsecase;

  setUp(() {
    mockPodcastRepository = MockPodcastRepository();
    getCategoriesListUsecase =
        GetCategoriesListUsecase(dataRepository: mockPodcastRepository);
  });
  test('should get a CategoryType list from the repository', () async {
    final mapCategoriesList = jsonDecode(tCategoriesJson)['categories'] as List;

    final tCategoriesList =
        mapCategoriesList.map((e) => CategoryTypeModel.fromJson(e)).toList();

    when(mockPodcastRepository.getCategoriesList())
        .thenAnswer((_) async => Future.value(tCategoriesList));

    final result = await getCategoriesListUsecase();

    expect(result, equals(tCategoriesList));
    verify(mockPodcastRepository.getCategoriesList());
    verifyNoMoreInteractions(mockPodcastRepository);
  });
}
