import 'package:cached_network_image/cached_network_image.dart';
import 'package:cubapod/src/presentation/application/podcasts_list_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

class PodcastListWidget extends StatelessWidget {
  const PodcastListWidget({
    Key key,
    @required this.podcastListModel,
    @required this.cacheManager,
  }) : super(key: key);

  final PodcastListModel podcastListModel;
  final CacheManager cacheManager;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
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
              height: size.height * 0.34,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(vertical: 6.0),
                itemCount: podcastListModel.podcastList.length,
                itemBuilder: (context, index) {
                  final episodesCount =
                      podcastListModel.podcastList[index].episodesCount;
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Card(
                      elevation: 4.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Container(
                          width: size.height * 0.3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 3,
                                child: Container(
                                  color: Colors.blueAccent,
                                  width: double.infinity,
                                  child: CachedNetworkImage(
                                    cacheManager: cacheManager,
                                    fit: BoxFit.fill,
                                    imageUrl:
                                        '${podcastListModel.podcastList[index].image}',
                                    placeholder: (context, url) => Center(
                                        child: CircularProgressIndicator()),
                                    errorWidget: (context, url, error) =>
                                        Icon(Icons.error),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0, vertical: 8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        podcastListModel
                                            .podcastList[index].title,
                                        softWrap: true,
                                        maxLines: 1,
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 8.0,
                                      ),
                                      Text(
                                        episodesCount >= 2
                                            ? '${podcastListModel.podcastList[index].episodesCount} episodes'
                                            : '${podcastListModel.podcastList[index].episodesCount} episode',
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 16.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
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
