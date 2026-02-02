import 'package:go_router/go_router.dart';
import 'package:swifty_companion/ui/auth/widgets/signin_screen.dart';
import 'package:swifty_companion/ui/search/widgets/search_by_login_screen.dart';

final router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (_, _) => LoginScreen()),
    GoRoute(path: '/oauth-granted', builder: (_, _) => SearchByLoginScreen()),
  ],
);
