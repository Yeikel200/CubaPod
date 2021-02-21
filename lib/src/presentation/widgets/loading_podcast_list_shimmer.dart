import 'loading_line_shimmer_widget.dart';
import 'package:flutter/material.dart';

class LoadingPodcastListShimmerWidget extends StatelessWidget {
  const LoadingPodcastListShimmerWidget({
    Key key,
  }) : super(key: key);

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
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        LoadingLineShimmerWidget(
                          child: Container(
                            color: GREY_COLOR,
                            height: 4.0,
                            width: size.width * 0.4,
                          ),
                        ),
                        LoadingLineShimmerWidget(
                          child: Container(
                            color: GREY_COLOR,
                            height: 4.0,
                            width: size.width * 0.15,
                          ),
                        ),
                      ],
                    ),
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
                itemCount: 3,
                itemBuilder: (context, index) {
                  // return Container(
                  //   height: 250.0,
                  //   width: 250.0,
                  //   color: Colors.green,
                  // );
                  return _PodcastShimmerWidget();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

const GREY_COLOR = Colors.grey;

class _PodcastShimmerWidget extends StatelessWidget {
  const _PodcastShimmerWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Card(
        elevation: 4.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Stack(children: [
            Container(
              width: size.height * 0.24,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      width: double.infinity,
                      child: LoadingLineShimmerWidget(
                          child: Container(
                        color: GREY_COLOR,
                      )),
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
                          LoadingLineShimmerWidget(
                              child: Container(
                            color: GREY_COLOR,
                            width: size.width * 0.3,
                          )),
                          SizedBox(
                            height: 6.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: LoadingLineShimmerWidget(
                                child: Container(
                              color: GREY_COLOR,
                              width: size.width * 0.3,
                              height: 4.0,
                            )),
                          ),
                          LoadingLineShimmerWidget(
                              child: Container(
                            color: GREY_COLOR,
                            width: size.width * 0.15,
                            height: 4.0,
                          )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 16.0,
              right: 16.0,
              child: LoadingLineShimmerWidget(
                child: Icon(Icons.favorite_border),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
