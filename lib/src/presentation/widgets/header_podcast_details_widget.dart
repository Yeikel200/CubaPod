import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/logic/core_provider.dart';
import '../logic/podcast_details/podcast_details_provider.dart';
import 'loaded_header_podcast_widget.dart';
import 'loading_header_shimmer_widget.dart';

class HeaderPodcastDetailsWidget extends ConsumerWidget {
  const HeaderPodcastDetailsWidget({
    Key key,
    @required this.shrinkOffset,
  }) : super(key: key);

  final double shrinkOffset;

  @override
  Widget build(BuildContext context, watch) {
    final podcastState = watch(podcastDetailsStateNotifierProvider.state);
    final cacheManager = watch(customCacheManagerProvider);
    if (podcastState is LoadingPodcastDetailsState) {
      return LoadingHeaderShimmerWidget(
        shrinkOffset: shrinkOffset,
      );
    }
    if (podcastState is LoadedPodcastDetailsState) {
      return LoadedHeaderPodcastWidget(
        shrinkOffset: shrinkOffset,
        podcastTypeModel: podcastState.podcastTypeModel,
        cacheManager: cacheManager,
      );
    } else {
      return Center(
        child: Text('Error...'),
      );
    }
  }
}
