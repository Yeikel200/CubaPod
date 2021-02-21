import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/logic/core_provider.dart';
import '../../data/models/episode_type_model.dart';
import '../logic/audio_podcast/audio_podcast_provider.dart';
import '../logic/panel_control/panel_control_provider.dart';
import '../logic/podcast_details/podcast_details_provider.dart';

class ImagePlayWidget extends StatelessWidget {
  const ImagePlayWidget(
      {Key key, @required this.epidodeTypeModel, @required this.size})
      : super(key: key);

  final EpisodeTypeModel epidodeTypeModel;
  final double size;

  @override
  Widget build(BuildContext context) {
    final iconSize = size / 2;
    return PhysicalModel(
      color: Colors.grey,
      elevation: 8.0,
      child: Container(
        width: size,
        height: size,
        child: Consumer(builder: (context, watch, child) {
          final cacheManager = watch(customCacheManagerProvider);
          final podcast =
              watch(podcastDetailsStateNotifierProvider).podcastTypeModel;
          final audioPodcast = watch(audioPodcastStateNotifierProvider.state);
          return Stack(
            children: [
              CachedNetworkImage(
                cacheManager: cacheManager,
                fit: BoxFit.fill,
                imageUrl: epidodeTypeModel?.image,
                placeholder: (context, url) =>
                    Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
              Positioned.fill(
                child: Container(
                  color: Colors.white.withOpacity(0.5),
                ),
              ),
              Positioned(
                top: ((size - (iconSize / 2)) / 4),
                right: ((size - (iconSize / 2)) / 4),
                child: Builder(
                  builder: (context) {
                    if ((audioPodcast is PlayingState &&
                        audioPodcast?.episode?.slug ==
                            epidodeTypeModel?.slug)) {
                      return IconButton(
                        icon: Icon(
                          Icons.stop_sharp,
                        ),
                        iconSize: iconSize,
                        onPressed: () {
                          context
                              .read(audioPodcastStateNotifierProvider)
                              .stop();
                          context
                              .read(panelControlNotifierProvider)
                              .changeToVisble();
                        },
                      );
                    }
                    if (audioPodcast is LoadingState &&
                        audioPodcast?.episode?.slug == epidodeTypeModel?.slug) {
                      return IconButton(
                        icon: Icon(
                          Icons.stop_sharp,
                        ),
                        iconSize: iconSize,
                        onPressed: () {
                          context
                              .read(audioPodcastStateNotifierProvider)
                              .stop();
                          context
                              .read(panelControlNotifierProvider)
                              .changeToHide();
                        },
                      );
                    }
                    return IconButton(
                      icon: Icon(
                        Icons.play_arrow_sharp,
                      ),
                      iconSize: iconSize,
                      onPressed: () {
                        context.read(audioPodcastStateNotifierProvider).playUrl(
                              episode: epidodeTypeModel,
                              podcast: podcast,
                            );
                        context
                            .read(panelControlNotifierProvider)
                            .changeToVisble();
                      },
                    );
                  },
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
