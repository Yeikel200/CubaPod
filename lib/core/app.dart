import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../src/presentation/logic/topic_selection/topic_selection_provider.dart';
import '../src/presentation/screens/home_screen.dart';
import '../src/presentation/screens/select_topics_screen.dart';
import '../src/presentation/screens/splash_screen.dart';

class CubaPodApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, watch, child) {
      final cache = watch(cacheCatergoryListFutureProvider);
      return MaterialApp(
        routes: <String, WidgetBuilder>{
          //'/': (context) => HomePage(),
          '/SelectTopics': (BuildContext context) => SelectTopicsScreen(),
        },
        home: Scaffold(
          body: cache.map(
            loading: (_) => SplashScreen(),
            data: (d) => d.value ? HomeScreen() : SelectTopicsScreen(),
            error: (_) => SelectTopicsScreen(),
          ),
        ),
      );
    });
  }
}
