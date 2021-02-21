import 'core/app.dart';
import 'injector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setup();
  runApp(ProviderScope(observers: [Logger()], child: CubaPodApp()));
}

class Logger extends ProviderObserver {
  @override
  void didUpdateProvider(ProviderBase provider, Object newValue) {
    print(''' didUpdateProvider:
      {
        "provider": "${provider.name ?? provider.runtimeType}",
        "newValue": "$newValue"
      }''');
  }

  @override
  void didAddProvider(ProviderBase provider, Object newValue) {
    print(''' didAddProvider:
      {
        "provider": "${provider.name ?? provider.runtimeType}",
        "newValue": "$newValue"
      }''');
  }
}
