import 'package:flutter_task/core/routing/routes.dart';
import 'package:go_router/go_router.dart';
import '../../features/account/presentation/screen/account_screen.dart';
import '../../features/add_ad/presentation/screens/add_ad_screen.dart';
import '../../features/chat/presentation/screens/chat_screen.dart';
import '../../features/offers/presentation/screens/offers_screen.dart';
import '../widgets/bottom_navigation_shell.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: Routes.offers,
    debugLogDiagnostics: true,

    // 🟢 Branch Navigation
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return BottomNavigationShell(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.offers,
                name: 'offers',
                pageBuilder: (context, state) =>
                    const NoTransitionPage(child: OffersScreen()),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.chat,
                name: 'chat',
                pageBuilder: (context, state) =>
                    const NoTransitionPage(child: ChatScreen()),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.add,
                name: 'add',
                pageBuilder: (context, state) =>
                    const NoTransitionPage(child: AddAdScreen()),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.account,
                name: 'account',
                pageBuilder: (context, state) =>
                    const NoTransitionPage(child: AccountScreen()),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
