import 'package:cubapod/src/presentation/widgets/loading_line_shimmer_widget.dart';
import 'package:flutter/material.dart';

class ParagrahpShemmerWidget extends StatelessWidget {
  const ParagrahpShemmerWidget({
    Key key,
    @required this.width,
    this.height = 4.0,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2.0),
                child: LoadingLineShimmerWidget(
                  child: Container(
                    color: Colors.black87,
                    height: height,
                    width: width * 0.4,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: LoadingLineShimmerWidget(
                  child: Container(
                    color: Colors.black87,
                    height: 5,
                    width: width * 0.4,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2.0),
            child: LoadingLineShimmerWidget(
              child: Container(
                color: Colors.black87,
                height: 5,
                width: width * 0.8,
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2.0),
                child: LoadingLineShimmerWidget(
                  child: Container(
                    color: Colors.black87,
                    height: 5,
                    width: width * 0.6,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: LoadingLineShimmerWidget(
                  child: Container(
                    color: Colors.black87,
                    height: 5,
                    width: width * 0.2,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2.0),
            child: LoadingLineShimmerWidget(
              child: Container(
                color: Colors.black87,
                height: 5,
                width: width * 0.8,
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: LoadingLineShimmerWidget(
                  child: Container(
                    color: Colors.black87,
                    height: 5,
                    width: width * 0.3,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3.0),
                child: LoadingLineShimmerWidget(
                  child: Container(
                    color: Colors.black87,
                    height: 5,
                    width: width * 0.5,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2.0),
            child: LoadingLineShimmerWidget(
              child: Container(
                color: Colors.black87,
                height: 5,
                width: width * 0.8,
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2.0),
                child: LoadingLineShimmerWidget(
                  child: Container(
                    color: Colors.black87,
                    height: 5,
                    width: width * 0.5,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: LoadingLineShimmerWidget(
                  child: Container(
                    color: Colors.black87,
                    height: 5,
                    width: width * 0.3,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2.0),
            child: LoadingLineShimmerWidget(
              child: Container(
                color: Colors.black87,
                height: 5,
                width: width * 0.8,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
