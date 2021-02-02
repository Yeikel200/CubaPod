import 'dart:convert';

import 'package:cubapod/src/data/models/podcast_type_model.dart';
import 'package:cubapod/src/domine/repository/podcast_repository.dart';
import 'package:cubapod/src/domine/usecase/get_podcast_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:cubapod/src/data/api/queries/queries.dart' as queries;

class MockPodcastRepository extends Mock implements PodcastRepository {}

void main() {
  GetPodcastUsecase getPodcastUsecase;
  MockPodcastRepository mockPodcastRepository;

  setUp(() {
    mockPodcastRepository = MockPodcastRepository();
    getPodcastUsecase =
        GetPodcastUsecase(dataRepository: mockPodcastRepository);
  });

  final mapPodcastTypeModel = jsonDecode(queries.responsePodcast)['podcast'];

  final tPodcastTypeModel = PodcastTypeModel.fromJson(mapPodcastTypeModel);

  test(
    'should get Podcast from the repository',
    () async {
      // arrange
      when(mockPodcastRepository.getPodcast(podcastName: 'tecnologia'))
          .thenAnswer((_) async => Future.value(tPodcastTypeModel));

      // act
      final result = await getPodcastUsecase(podcastName: 'tecnologia');

      // assert
      expect(result, equals(tPodcastTypeModel));
      verify(mockPodcastRepository.getPodcast(podcastName: 'tecnologia'));
      verifyNoMoreInteractions(mockPodcastRepository);
    },
  );
}
