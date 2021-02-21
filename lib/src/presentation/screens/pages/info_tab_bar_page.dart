import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../logic/podcast_details/podcast_details_provider.dart';
import '../../widgets/loading_line_shimmer_widget.dart';
import '../../widgets/paragraph_shemmer_widget.dart';

class InfoTabBarPage extends StatelessWidget {
  const InfoTabBarPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, watch, child) {
      final podcastState = watch(podcastDetailsStateNotifierProvider.state);

      if (podcastState is LoadingPodcastDetailsState) {
        return _LoadingInfoPodcastWidget();
      }
      if (podcastState is LoadedPodcastDetailsState) {
        return ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Autor:',
                maxLines: 3,
                softWrap: true,
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                podcastState.podcastTypeModel.author,
                maxLines: 3,
                softWrap: true,
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
              child: Text(
                '${podcastState.podcastTypeModel.episodesCount} episodios',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Sumario:',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('${podcastState.podcastTypeModel.subtitle}'),
            ),
          ],
        );
      } else {
        return Center(
          child: Text('Error ...'),
        );
      }
    });
  }
}

class _LoadingInfoPodcastWidget extends StatelessWidget {
  const _LoadingInfoPodcastWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Autor:',
              maxLines: 3,
              softWrap: true,
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                LoadingLineShimmerWidget(
                  child: Container(
                    color: Colors.black87,
                    height: 5,
                    width: 80,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: LoadingLineShimmerWidget(
                    child: Container(
                      color: Colors.black87,
                      height: 5,
                      width: 120,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                LoadingLineShimmerWidget(
                  child: Container(
                    color: Colors.black87,
                    height: 15,
                    width: 15,
                    child: Text('#'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 8.0),
                  child: Text(
                    'episodios',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Sumario:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
          ),
          ParagrahpShemmerWidget(
            width: size.width,
          ),
        ],
      ),
    );
  }
}
