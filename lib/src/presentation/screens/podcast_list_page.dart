import 'package:cubapod/src/presentation/application/podcasts_list_notifier.dart';
import 'package:cubapod/src/presentation/application/podcasts_provider.dart';
import 'package:cubapod/src/presentation/screens/select_topics_screen.dart';
import 'package:cubapod/src/presentation/widgets/podcast_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';

class PodcastListPage extends ConsumerWidget {
  const PodcastListPage();
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final podcastListState = watch(podcastsListStateNotifierProvider.state);
    final cacheManager = watch(customCacheManagerProvider);
    if (podcastListState is LoadingPodcastListState) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }
    if (podcastListState is LoadedPodcastListState) {
      return ListView.builder(
          itemCount: podcastListState.podcastList.length,
          itemBuilder: (context, index) {
            return PodcastListWidget(
              podcastListModel: podcastListState.podcastList[index],
              cacheManager: cacheManager,
            );
          });
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'ERROR ...',
            style: TextStyle(fontSize: 22.0),
          ),
          RaisedButton(
            child: Text('Pick...'),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => SelectTopicsScreen(),
                  ));
            },
          )
        ],
      );
    }
  }
}
