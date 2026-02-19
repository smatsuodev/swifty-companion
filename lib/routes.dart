import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:swifty_companion/ui/auth/authorizing_screen.dart';
import 'package:swifty_companion/ui/auth/signin_screen.dart';
import 'package:swifty_companion/ui/profile/profile_screen.dart';

part 'routes.g.dart';

@riverpod
List<GoRoute> routes(Ref ref) => [
  GoRoute(
    name: 'home',
    path: '/',
    builder: (_, _) => SigninScreen(),
    routes: [
      GoRoute(
        name: 'profile',
        path: 'profile',
        builder: (_, _) => ProfileScreen(),
      ),
    ],
  ),
  GoRoute(
    path: '/oauth-granted',
    builder: (_, state) {
      return AuthorizingScreen(code: state.uri.queryParameters['code']);
    },
  ),
];
