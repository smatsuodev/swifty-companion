import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:swifty_companion/data/service/auth_service.dart';
import 'package:swifty_companion/utils/logger/logger.dart';

class AuthorizedScope extends ConsumerWidget {
  final Widget child;
  final String? code;

  const AuthorizedScope({super.key, required this.child, required this.code});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authService = ref.watch(authServiceProvider);

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
        return child;
      },
    );
  }
}
