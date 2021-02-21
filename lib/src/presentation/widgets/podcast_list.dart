import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/logic/core_provider.dart';
import '../../data/models/podcast_type_model.dart';
import '../logic/podcast_details/podcast_details_provider.dart';
import '../logic/podcast_list/podcast_list_provider.dart';
import '../screens/podcast_details_screen.dart';

class PodcastListWidget extends StatelessWidget {
  const PodcastListWidget({
    Key key,
    @required this.podcastListModel,
  }) : super(key: key);

  final PodcastListModel podcastListModel;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Container(
        height: size.height * 0.4,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12.0,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        podcastListModel.category,
                        style: TextStyle(
                            fontSize: 24.0, fontWeight: FontWeight.bold),
                      ),
                      Container(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Ver Todos',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )),
                    ],
                  ),
                  Divider(
                    thickness: 1.5,
                  ),
                ],
              ),
            ),
            Container(
              height: size.height * 0.32,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(vertical: 6.0),
                itemCount: podcastListModel.podcastList.length,
                itemBuilder: (context, index) {
                  final podcastTypeModel = podcastListModel.podcastList[index];
                  return _PodcastWidget(
                    index: index,
                    podcastTypeModel: podcastTypeModel,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _PodcastWidget extends StatelessWidget {
  const _PodcastWidget({
    Key key,
    @required this.index,
    @required this.podcastTypeModel,
  }) : super(key: key);

  final int index;
  final PodcastTypeModel podcastTypeModel;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Consumer(builder: (context, watch, child) {
      final cacheManager = watch(customCacheManagerProvider);
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: Card(
          elevation: 4.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          child: InkWell(
            onTap: () {
              context
                  .read(podcastDetailsStateNotifierProvider)
                  .getPodcastDeatails(podcastSlug: podcastTypeModel.slug);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PodcastDetailsScreen(),
                  ));
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Stack(children: [
                Container(
                  width: size.height * 0.25,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          width: double.infinity,
                          child: Hero(
                            tag: podcastTypeModel.slug,
                            child: CachedNetworkImage(
                              cacheManager: cacheManager,
                              fit: BoxFit.fill,
                              imageUrl: '${podcastTypeModel.image}',
                              placeholder: (context, url) =>
                                  Center(child: CircularProgressIndicator()),
                              errorWidget: (context, url, error) =>
                                  Icon(Icons.error),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                podcastTypeModel.title,
                                softWrap: true,
                                maxLines: 2,
                                textScaleFactor:
                                    MediaQuery.textScaleFactorOf(context),
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 6.0,
                              ),
                              Expanded(
                                child: Text(
                                  podcastTypeModel.episodesCount >= 2
                                      ? '${podcastTypeModel.episodesCount} episodes'
                                      : '${podcastTypeModel.episodesCount} episode',
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0.0,
                  right: 0.0,
                  child: IconButton(
                    icon: Icon(Icons.favorite_border),
                    color: Colors.red,
                    onPressed: () {},
                  ),
                )
              ]),
            ),
          ),
        ),
      );
    });
  }
}
