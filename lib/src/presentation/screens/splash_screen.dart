import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SplashScreen extends ConsumerWidget {
  const SplashScreen();
  @override
  Widget build(context, watch) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 5,
              child: FlutterLogo(
                size: 150,
              ),
            ),
            Expanded(
              flex: 1,
              child: Center(child: CircularProgressIndicator()),
            ),
            Expanded(
              flex: 1,
              child: SizedBox.fromSize(),
            ),
          ],
        ),
      ),
    );
  }
}
