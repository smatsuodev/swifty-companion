import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:swifty_companion/routing.dart';
import 'package:swifty_companion/theme.dart';

void main() {
  runApp(ProviderScope(child: App()));
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: theme,
      darkTheme: darkTheme,
      routerConfig: router,
    );
  }
}
