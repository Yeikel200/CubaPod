import 'dart:convert';

import 'package:cubapod/src/data/models/category_type_model.dart';
import 'package:cubapod/src/domine/repository/podcast_repository.dart';
import 'package:cubapod/src/domine/usecase/get_category_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:cubapod/src/data/api/queries/queries.dart' as queries;

class MockPodcastRepository extends Mock implements PodcastRepository {}

void main() {
  MockPodcastRepository mockPodcastRepository;
  GetCategoryUsecase getCategoryUsecase;

  setUp(() {
    mockPodcastRepository = MockPodcastRepository();
    getCategoryUsecase =
        GetCategoryUsecase(dataRepository: mockPodcastRepository);
  });

  test('should get CategoryTypeModel from the repository', () async {
    final mapPodcastTypeModel =
        jsonDecode(queries.responseCategory)['category'];

    final tCategoryTypeModel = CategoryTypeModel.fromJson(mapPodcastTypeModel);

    when(mockPodcastRepository.getCategory(categoryName: 'tecnologia'))
        .thenAnswer((_) async => Future.value(tCategoryTypeModel));

    final result = await getCategoryUsecase(categoryName: 'tecnologia');

    expect(result, equals(tCategoryTypeModel));
    verify(mockPodcastRepository.getCategory(categoryName: 'tecnologia'));
    verifyNoMoreInteractions(mockPodcastRepository);
  });
}
