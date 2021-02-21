import 'package:cubapod/src/presentation/application/podcasts_list_notifier.dart';
import 'package:cubapod/src/presentation/application/podcasts_provider.dart';
import 'package:cubapod/src/presentation/widgets/loading_podcast_list_shimmer.dart';
import 'package:cubapod/src/presentation/widgets/podcast_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          itemCount: podcastListState.podcastList.length,
          itemBuilder: (context, index) {
            return PodcastListWidget(
              podcastListModel: podcastListState.podcastList[index],
            );
          });
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: Icon(
              Icons.error,
              size: 60.0,
            ),
          ),
          Text(
            'Upsss ...',
            style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
            child: Text(
              'Su conexión a internet fue interrumpida, por favor vuelva a intentarlo !!',
              style: TextStyle(
                fontSize: 16.0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              child: Text('Reintentar'),
              onPressed: () {
                context
                    .read(podcastsListStateNotifierProvider)
                    .loadPodcastList();
              },
            ),
          )
        ],
      );
    }
  }
}
