import 'package:cubapod/src/presentation/application/podcasts_list_notifier.dart';
import 'package:cubapod/src/presentation/application/podcasts_provider.dart';
import 'package:cubapod/src/presentation/screens/select_topics_screen.dart';
import 'package:cubapod/src/presentation/widgets/loading_podcast_list_shimmer.dart';
import 'package:cubapod/src/presentation/widgets/podcast_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';

class PodcastListPage extends ConsumerWidget {
  const PodcastListPage();
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final podcastListState = watch(podcastsListStateNotifierProvider.state);
    if (podcastListState is LoadingPodcastListState) {
      return ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
          itemCount: 5,
          itemBuilder: (context, index) {
            return LoadingPodcastListShimmerWidget();
          });
    }
    if (podcastListState is LoadedPodcastListState) {
      return ListView.builder(
          itemCount: podcastListState.podcastList.length,
          itemBuilder: (context, index) {
            return PodcastListWidget(
              podcastListModel: podcastListState.podcastList[index],
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
