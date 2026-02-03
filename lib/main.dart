import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:swifty_companion/routes.dart';
import 'package:swifty_companion/theme.dart';

void main() {
  runApp(ProviderScope(child: App()));
}

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      theme: theme,
      darkTheme: darkTheme,
      routerConfig: GoRouter(routes: ref.watch(routesProvider)),
    );
  }
}
