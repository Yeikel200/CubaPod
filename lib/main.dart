import 'package:cubapod/src/presentation/application/podcasts_provider.dart';
import 'package:cubapod/src/presentation/screens/home_screen.dart';
import 'package:cubapod/src/presentation/screens/select_topics_screen.dart';
import 'package:cubapod/src/presentation/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
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
