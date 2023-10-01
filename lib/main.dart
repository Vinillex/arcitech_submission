import 'package:arcitech_submission/app.dart';
import 'package:arcitech_submission/init/object_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'init/dependency.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ObjectBox.create();
  registerDependencies();
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}
