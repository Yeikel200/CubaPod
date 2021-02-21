import 'package:cubapod/src/data/models/episode_type_model.dart';
import 'package:cubapod/src/presentation/application/podcast_notifier.dart';
import 'package:cubapod/src/presentation/application/podcasts_provider.dart';
import 'package:cubapod/src/presentation/widgets/episode_widget.dart';
import 'package:cubapod/src/presentation/widgets/image_play_widget.dart';
import 'package:cubapod/src/presentation/widgets/loading_episode_list_shimmer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
        return EpisodeListWidget(
          episodesList: episodesList,
        );
      } else {
        return Center(
          child: Text('Error ...'),
        );
      }
    });
  }
}

class EpisodeListWidget extends StatelessWidget {
  const EpisodeListWidget({
    Key key,
    @required this.episodesList,
  }) : super(key: key);

  final List<EpisodeTypeModel> episodesList;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      itemCount: episodesList.length,
      itemBuilder: (context, index) => InkWell(
        onTap: () {
          showModalBottomSheet<void>(
            isScrollControlled: true,
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: size.height * 0.8,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 16.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Detalles del episodio',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.close_rounded),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          ImagePlayWidget(
                            epidodeTypeModel: episodesList[index],
                            size: size.width * 0.20,
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Text(
                                episodesList[index].title,
                                maxLines: 4,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Text(
                            '${episodesList[index].publishedAt} - ${episodesList[index].itunesDuration} min',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black54,
                            )),
                      ),
                      Divider(),
                      Text(
                        episodesList[index].summary,
                        softWrap: true,
                        maxLines: 18,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
        child: EpisodeWidget(
          episodeTypeModel: episodesList[index],
        ),
      ),
    );
  }
}
