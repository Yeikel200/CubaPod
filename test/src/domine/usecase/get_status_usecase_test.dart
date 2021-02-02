import 'package:cubapod/src/domine/repository/podcast_repository.dart';
import 'package:cubapod/src/domine/usecase/get_status_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockPodcastRepository extends Mock implements PodcastRepository {}

void main() {
  GetStatusUsecase getStatusUsecase;
  MockPodcastRepository mockPodcastRepository;

  setUp(() {
    mockPodcastRepository = MockPodcastRepository();
    getStatusUsecase = GetStatusUsecase(dataRepository: mockPodcastRepository);
  });

  test(
    'should get status from the repository',
    () async {
      // arrange
      when(mockPodcastRepository.getStatus())
          .thenAnswer((_) async => Future.value(true));

      // act
      final result = await getStatusUsecase();

      // assert
      expect(result, true);
      verify(mockPodcastRepository.getStatus());
      verifyNoMoreInteractions(mockPodcastRepository);
    },
  );
}
