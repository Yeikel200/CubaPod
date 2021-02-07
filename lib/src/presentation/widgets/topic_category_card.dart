import 'package:cubapod/src/presentation/application/select_topic_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:cubapod/src/presentation/application/podcasts_provider.dart';

class TopicCategoryCardWidget extends StatelessWidget {
  const TopicCategoryCardWidget({
    Key key,
    this.topicModel,
  }) : super(key: key);
  final TopicModel topicModel;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final podcastsCount = topicModel.categoryTypeModel.podcastsCount;
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      elevation: 8.0,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: Material(
          child: InkWell(
            onTap: () {
              context
                  .read(categoryListStateNotifierProvider)
                  .addSelectCategory(topicModel);

              if (!topicModel.isSelected &&
                  topicModel.categoryTypeModel.podcastsCount > 0) {
                context.read(podcastsListStateNotifierProvider).getPodcastList(
                    categorySlug: topicModel.categoryTypeModel.slug);
              } else {
                if (topicModel.categoryTypeModel.podcastsCount > 0) {
                  context
                      .read(podcastsListStateNotifierProvider)
                      .deletePodcasts(
                          categorySlug: topicModel.categoryTypeModel.slug);
                }
              }
            },
            child: Container(
              height: size.height * 0.24,
              width: size.width * 0.45,
              decoration: BoxDecoration(
                color: Color(int.parse(
                  topicModel.categoryTypeModel.color
                      .replaceFirst(RegExp(r'#'), '0xFF'),
                )),
                border: topicModel.isSelected
                    ? Border.all(color: Colors.blueAccent, width: 2.5)
                    : null,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Stack(
                children: [
                  topicModel.isSelected
                      ? Positioned(
                          top: 25.0,
                          right: -2.5,
                          child: Container(
                            height: 30.0,
                            width: 45.0,
                            decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              //border: Border.all(color: Colors.black, width: 2.5),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15.0),
                                  bottomLeft: Radius.circular(15.0)),
                            ),
                            child: Icon(
                              Icons.check,
                              color: Colors.white,
                            ),
                          ),
                        )
                      : SizedBox(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          topicModel.categoryTypeModel.name,
                          style: TextStyle(fontSize: 22.0, color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 12.0, left: 12.0, right: 8.0),
                        child: Text(
                          podcastsCount >= 2
                              ? '$podcastsCount podcasts'
                              : '$podcastsCount podcast',
                          style:
                              TextStyle(fontSize: 14.0, color: Colors.white60),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
