import 'dart:convert';

import 'package:cubapod/src/data/models/podcast_type_model.dart';
import 'package:cubapod/src/domine/repository/podcast_repository.dart';
import 'package:cubapod/src/domine/usecase/get_podcasts_list_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../utility.dart';

class MockPodcastRepository extends Mock implements PodcastRepository {}

void main() {
  MockPodcastRepository mockPodcastRepository;
  GetPodcastsListUsecase getPodcastsListUsecase;

  setUp(() {
    mockPodcastRepository = MockPodcastRepository();
    getPodcastsListUsecase =
        GetPodcastsListUsecase(dataRepository: mockPodcastRepository);
  });
  test('should get a PodcastType list from the repository', () async {
    final mapPodcastsList = jsonDecode(tPodcastsJson)['podcasts'] as List;

    final tPodcastsTypeModelList =
        mapPodcastsList.map((e) => PodcastTypeModel.fromJson(e)).toList();

    when(mockPodcastRepository.getPodcastsList(categorySlug: 'tecnologia'))
        .thenAnswer((_) async => Future.value(tPodcastsTypeModelList));

    final result = await getPodcastsListUsecase(categorySlug: 'tecnologia');

    expect(result, equals(tPodcastsTypeModelList));
    verify(mockPodcastRepository.getPodcastsList(categorySlug: 'tecnologia'));
    verifyNoMoreInteractions(mockPodcastRepository);
  });
}
