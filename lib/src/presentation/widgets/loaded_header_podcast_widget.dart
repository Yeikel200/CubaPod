import 'package:cached_network_image/cached_network_image.dart';
import 'package:cubapod/constant.dart';
import 'package:cubapod/src/data/models/podcast_type_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

const _maxNameSize = 25.0;
const _maxCategorySize = 16.0;

const _minNameSize = 20.0;
const _minCategorySize = 14.0;

class LoadedHeaderPodcastWidget extends StatelessWidget {
  const LoadedHeaderPodcastWidget({
    Key key,
    @required this.shrinkOffset,
    @required this.podcastTypeModel,
    @required this.cacheManager,
  }) : super(key: key);

  final double shrinkOffset;
  final PodcastTypeModel podcastTypeModel;
  final CacheManager cacheManager;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final maxSizeImage = size.width * 0.38;
    final minSizeImage = size.width * 0.14;
    final percent = shrinkOffset / maxSizeImage;
    final currentImageSize =
        (maxSizeImage * (1 - percent)).clamp(minSizeImage, maxSizeImage);

    final minWidthColumn = size.width / 2;
    final maxWidthColumn = size.width / 1.6;

    final nameSize =
        (_maxNameSize * (1 - percent)).clamp(_minNameSize, _maxNameSize);
    final categorySize = (_maxNameSize * (1 - percent))
        .clamp(_minCategorySize, _maxCategorySize);
    return Stack(children: [
      Positioned.fill(
        child: Container(
          color: Colors.white,
        ),
      ),
      Positioned(
        bottom: 70.0,
        left: (20.0 * (percent + 1)).clamp(20.0, 70.0),
        width: currentImageSize,
        height: currentImageSize,
        child: Container(
          child: Hero(
            tag: podcastTypeModel.slug,
            child: CachedNetworkImage(
              cacheManager: cacheManager,
              fit: BoxFit.fill,
              imageUrl: '${podcastTypeModel.image}',
              placeholder: (context, url) =>
                  Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
        ),
      ),
      Positioned(
        top: (100.0 * (1 - percent)).clamp(32.0, 100.0),
        right: 20.0,
        width:
            (minWidthColumn * (percent)).clamp(minWidthColumn, maxWidthColumn),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                podcastTypeModel.title,
                style: TextStyle(
                  fontSize: nameSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  podcastTypeModel.category.name,
                  style: TextStyle(
                    fontSize: categorySize,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
              ),
              if (minWidthColumn * percent < minWidthColumn)
                IconButton(
                  icon: Icon(Icons.favorite_border),
                  color: Colors.red,
                  onPressed: () {},
                ),
            ],
          ),
        ),
      ),
      Positioned(
        top: 40.0,
        left: 10.0,
        child: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      Positioned(
        bottom: 0.0,
        left: 0.0,
        right: 0.0,
        child: Material(
          child: TabBar(
            labelColor: Colors.black,
            tabs: [
              Tab(
                text: TAB_NAME_EPISODE,
              ),
              Tab(text: TAB_NAME_INFO),
            ],
          ),
        ),
      ),
    ]);
  }
}
