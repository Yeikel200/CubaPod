import 'package:cubapod/constant.dart';
import 'package:cubapod/src/presentation/widgets/loading_line_shimmer_widget.dart';
import 'package:flutter/material.dart';

const tagHaderPodcastHeroAnimation = 'podcastTypeModelSlug';

class LoadingHeaderShimmerWidget extends StatelessWidget {
  const LoadingHeaderShimmerWidget({
    Key key,
    this.shrinkOffset,
  }) : super(key: key);
  final double shrinkOffset;
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
            tag: tagHaderPodcastHeroAnimation,
            child: LoadingLineShimmerWidget(
              child: Container(
                color: Colors.grey,
                height: currentImageSize,
                width: currentImageSize,
              ),
            ),
          ),
        ),
      ),
      Positioned(
        top: (100.0 * (1 - percent)).clamp(50.0, 100.0),
        right: 20.0,
        width:
            (minWidthColumn * (percent)).clamp(minWidthColumn, maxWidthColumn),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LoadingLineShimmerWidget(
                child: Container(
                  color: Colors.grey,
                  height: (4.0 * (percent)).clamp(4.0, 6.0),
                  width: (120.0 * (percent)).clamp(120.0, 150.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: LoadingLineShimmerWidget(
                  child: Container(
                    color: Colors.grey,
                    height: (4.0 * (percent)).clamp(4.0, 6.0),
                    width: (80.0 * (percent)).clamp(80.0, 120.0),
                  ),
                ),
              ),
              if (minWidthColumn * percent < minWidthColumn)
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: LoadingLineShimmerWidget(
                    child: Container(
                        height: 32,
                        width: 32,
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.grey,
                        )),
                  ),
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
              Tab(
                text: TAB_NAME_INFO,
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
