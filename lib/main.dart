import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' show ProviderScope;

import 'cinebox_main_app.dart' show CineboxMainApp;

void main() {
  runApp(
    ProviderScope(
      child: const CineboxMainApp(),
    ),
  );
}
