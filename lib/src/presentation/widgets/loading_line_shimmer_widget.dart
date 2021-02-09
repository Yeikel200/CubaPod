import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LoadingLineShimmerWidget extends StatelessWidget {
  const LoadingLineShimmerWidget({
    Key key,
    @required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Shimmer.fromColors(
        baseColor: Colors.grey[400],
        highlightColor: Colors.grey[200],
        child: child,
      ),
    );
  }
}
