import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:swifty_companion/ui/auth/widgets/signin_screen.dart';
import 'package:swifty_companion/ui/search/widgets/search_by_login_screen.dart';

part 'routes.g.dart';

@riverpod
List<GoRoute> routes(Ref ref) => [
  GoRoute(path: '/', builder: (_, _) => LoginScreen()),
  GoRoute(
    path: '/oauth-granted',
    builder: (_, state) {
      return SearchByLoginScreen();
    },
  ),
];
