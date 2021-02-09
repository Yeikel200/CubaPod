import 'package:cached_network_image/cached_network_image.dart';
import 'package:cubapod/src/data/models/episode_type_model.dart';
import 'package:cubapod/src/presentation/application/podcasts_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:intl/intl.dart';

class EpisodeWidget extends StatelessWidget {
  const EpisodeWidget({
    Key key,
    this.epidodeTypeModel,
  }) : super(key: key);

  final EpisodeTypeModel epidodeTypeModel;

  @override
  Widget build(BuildContext context) {
    final date =
        DateFormat.yMd().format(DateTime.parse(epidodeTypeModel.publishedAt));
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      epidodeTypeModel.title,
                      maxLines: 4,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child:
                          Text('$date - ${epidodeTypeModel.itunesDuration} min',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black54,
                              )),
                    ),
                    Text(
                      epidodeTypeModel.summary,
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
            ),
            PhysicalModel(
              color: Colors.grey,
              elevation: 8.0,
              child: Container(
                width: 125.0,
                height: 125.0,
                child: Stack(
                  children: [
                    Consumer(builder: (context, watch, child) {
                      final cacheManager = watch(customCacheManagerProvider);
                      return CachedNetworkImage(
                        cacheManager: cacheManager,
                        fit: BoxFit.fill,
                        imageUrl: '${epidodeTypeModel.image}',
                        placeholder: (context, url) =>
                            Center(child: CircularProgressIndicator()),
                        errorWidget: (context, url, error) => Icon(Icons.error),
                      );
                    }),
                    Positioned.fill(
                      child: Container(
                        color: Colors.white.withOpacity(0.5),
                      ),
                    ),
                    Positioned(
                      top: 30.0,
                      left: 30.0,
                      child: IconButton(
                        icon: Icon(
                          Icons.play_arrow,
                        ),
                        iconSize: 50.0,
                        // color: Colors.green,
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
