import 'package:cubapod/src/presentation/screens/pages/episodes_list_tab_bar_page.dart';
import 'package:cubapod/src/presentation/screens/pages/info_tab_bar_page.dart';
import 'package:cubapod/src/presentation/widgets/header_podcast_details_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PodcastDetailsScreen extends StatelessWidget {
  const PodcastDetailsScreen({Key key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              SliverPersistentHeader(
                pinned: true,
                delegate: _HeaderPodcastDetailsDelegate(
                  maxHeaderExtend: size.height * 0.38,
                  minHeaderExtend: size.height * 0.2,
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              EpisodesListTabBarPage(),
              InfoTabBarPage(),
            ],
          ),
        ),
      ),
    );
  }
}

class _HeaderPodcastDetailsDelegate extends SliverPersistentHeaderDelegate {
  final double maxHeaderExtend;
  final double minHeaderExtend;

  _HeaderPodcastDetailsDelegate(
      {@required this.maxHeaderExtend, @required this.minHeaderExtend});
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return HeaderPodcastDetailsWidget(
      shrinkOffset: shrinkOffset,
    );
  }

  @override
  double get maxExtent => maxHeaderExtend;

  @override
  double get minExtent => minHeaderExtend;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}
