import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:swifty_companion/data/repository/auth_repository.dart';
import 'package:swifty_companion/utils/logger/logger.dart';

class AuthorizingScreen extends ConsumerWidget {
  final String? code;

  const AuthorizingScreen({super.key, required this.code});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authService = ref.watch(authRepositoryProvider);

    return FutureBuilder(
      future: authService.fetchToken(code),
      builder: (ctx, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }
        if (snapshot.hasError) {
          this.logger.e('failed to fetch token: ${snapshot.error}');
          Fluttertoast.showToast(
            msg: 'Failed to authorize. Please sign in again.',
          );
          WidgetsBinding.instance.addPostFrameCallback((_) {
            ctx.goNamed('home');
          });

          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }

        WidgetsBinding.instance.addPostFrameCallback((_) {
          ctx.goNamed('profile');
        });

        return const Scaffold(body: Center(child: CircularProgressIndicator()));
      },
    );
  }
}
