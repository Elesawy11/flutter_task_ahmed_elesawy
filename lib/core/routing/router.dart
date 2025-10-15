import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../features/account/presentation/screen/account_screen.dart';
import '../../features/add_ad/presentation/screens/add_ad_screen.dart';
import '../../features/chat/presentation/screens/chat_screen.dart';
import '../../features/offers/presentation/screens/offers_screen.dart';
import '../widgets/bottom_navigation_shell.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/offers',
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
                path: '/offers',
                name: 'offers',
                pageBuilder: (context, state) =>
                    const NoTransitionPage(child: OffersScreen()),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/chat',
                name: 'chat',
                pageBuilder: (context, state) =>
                    const NoTransitionPage(child: ChatScreen()),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/add',
                name: 'add',
                pageBuilder: (context, state) =>
                    const NoTransitionPage(child: AddAdScreen()),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/account',
                name: 'account',
                pageBuilder: (context, state) =>
                    const NoTransitionPage(child: AccountScreen()),
              ),
            ],
          ),
        ],
      ),
    ],

    // 🟣 انتقال عام لكل التنقلات
    observers: [HeroController()],
  );
}

// 🔸 Widget خاص بالـ BottomNavigationBar داخل الـShell
