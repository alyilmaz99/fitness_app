// ignore_for_file: deprecated_member_use

import 'package:fitness_app/product/router/route_constant.dart';
import 'package:fitness_app/view/auth/signin/view/auth_view.dart';
import 'package:fitness_app/view/auth/splash/view/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  late final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        name: RouteConstants.splash,
        path: '/',
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: SplashScreen(),
          );
        },
      ),
      GoRoute(
        name: RouteConstants.auth,
        path: '/auth',
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: AuthView(),
          );
        },
      ),
    ],
    redirect: (context, state) {
      bool isAuthenticated = false;
      if (!isAuthenticated && state.subloc == '/') {
        return state.namedLocation(RouteConstants.splash);
      }
      return null;
    },
  );
}
