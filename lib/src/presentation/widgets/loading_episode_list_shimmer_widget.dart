import 'package:cubapod/src/presentation/widgets/loading_line_shimmer_widget.dart';
import 'package:cubapod/src/presentation/widgets/paragraph_shemmer_widget.dart';
import 'package:flutter/material.dart';

class LoadingEpisodesListShimmerWidget extends StatelessWidget {
  const LoadingEpisodesListShimmerWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ListView.builder(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 8.0,
      ),
      itemCount: 8,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: LayoutBuilder(builder: (context, boxconstraint) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              LoadingLineShimmerWidget(
                                child: Container(
                                  color: Colors.grey,
                                  height: 4.0,
                                  width: size.width * 0.3,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: LoadingLineShimmerWidget(
                                  child: Container(
                                    color: Colors.grey,
                                    height: 4.0,
                                    width: size.width * 0.15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: LoadingLineShimmerWidget(
                              child: Container(
                                color: Colors.grey,
                                height: 4.0,
                                width: size.width * 0.2,
                              ),
                            ),
                          ),
                          ParagrahpShemmerWidget(
                            width: boxconstraint.maxWidth,
                          ),
                        ],
                      ),
                    );
                  }),
                ),
                PhysicalModel(
                  color: Colors.grey,
                  elevation: 8.0,
                  child: Container(
                    width: 125.0,
                    height: 125.0,
                    child: Stack(
                      children: [
                        Container(
                          width: 125.0,
                          height: 125.0,
                          color: Colors.grey,
                        ),
                        Positioned.fill(
                          child: Container(
                            color: Colors.white.withOpacity(0.5),
                          ),
                        ),
                        Positioned(
                          top: 30.0,
                          left: 30.0,
                          child: LoadingLineShimmerWidget(
                            child: IconButton(
                              icon: Icon(
                                Icons.play_arrow,
                              ),
                              iconSize: 50.0,
                              // color: Colors.green,
                              onPressed: () {},
                            ),
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
      },
    );
  }
}
