import '../../data/models/episode_type_model.dart';
import 'image_play_widget.dart';
import 'package:flutter/material.dart';

class EpisodeWidget extends StatelessWidget {
  const EpisodeWidget({
    Key key,
    this.episodeTypeModel,
  }) : super(key: key);

  final EpisodeTypeModel episodeTypeModel;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
                      episodeTypeModel?.title,
                      maxLines: 4,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                          '${episodeTypeModel?.getDate} - ${episodeTypeModel?.itunesDuration} min',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                          )),
                    ),
                    Text(
                      episodeTypeModel?.summary,
                      softWrap: true,
                      maxLines: 4,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ImagePlayWidget(
              epidodeTypeModel: episodeTypeModel,
              size: size.width * 0.32,
            )
          ],
        ),
      ),
    );
  }
}
