import 'package:cubapod/src/presentation/application/podcast_notifier.dart';
import 'package:cubapod/src/presentation/application/podcasts_provider.dart';
import 'package:cubapod/src/presentation/widgets/episode_widget.dart';
import 'package:cubapod/src/presentation/widgets/loading_episode_list_shimmer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';

class EpisodesListTabBarPage extends StatelessWidget {
  const EpisodesListTabBarPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, watch, child) {
      final detailsState = watch(podcastDetailsStateNotifierProvider.state);

      if (detailsState is LoadingPodcastDetailsState) {
        return LoadingEpisodesListShimmerWidget();
      }
      if (detailsState is LoadedPodcastDetailsState) {
        final episodesList = detailsState.podcastTypeModel.episodes.objects;
        return ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
          itemCount: episodesList.length,
          itemBuilder: (context, index) => EpisodeWidget(
            epidodeTypeModel: episodesList[index],
          ),
        );
      } else {
        return Center(
          child: Text('Error ...'),
        );
      }
    });
  }
}
