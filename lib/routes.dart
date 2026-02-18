import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:swifty_companion/ui/auth/widgets/authorized_scope.dart';
import 'package:swifty_companion/ui/auth/widgets/signin_screen.dart';
import 'package:swifty_companion/ui/search/widgets/profile_screen.dart';

part 'routes.g.dart';

@riverpod
List<GoRoute> routes(Ref ref) => [
  GoRoute(name: 'home', path: '/', builder: (_, _) => SigninScreen()),
  GoRoute(
    name: 'profile',
    path: '/profile',
    builder: (_, _) => ProfileScreen(),
  ),
  GoRoute(
    path: '/oauth-granted',
    builder: (_, state) {
      return AuthorizedScope(
        code: state.uri.queryParameters['code'],
        child: ProfileScreen(),
      );
    },
  ),
];
