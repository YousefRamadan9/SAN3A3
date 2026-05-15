import 'package:flutter/material.dart';
import '../screens/onboarding_screen.dart';
import '../screens/landing_screen.dart';
import '../screens/auth_screen.dart';
import '../screens/main_screen.dart';
import '../screens/dashboard_screen.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => const OnboardingScreen(),
  '/landing': (context) => const LandingScreen(),
  '/auth': (context) => const AuthScreen(isLogin: true),
  '/main': (context) => const MainScreen(),
  '/dashboard': (context) => const DashboardScreen(),
};
