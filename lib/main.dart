import 'package:cubapod/core/app.dart';
import 'package:cubapod/injector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setup();
  runApp(ProviderScope(child: CubaPodApp()));
}
