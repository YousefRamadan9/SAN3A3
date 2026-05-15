import 'package:flutter/material.dart';
import 'utils/app_theme.dart';
import 'utils/routes.dart';

void main() {
  runApp(const San3aApp());
}

class San3aApp extends StatelessWidget {
  const San3aApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'San3a - صنعة',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      // Enforce RTL for Arabic
      builder: (context, child) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: child!,
        );
      },
      initialRoute: '/',
      routes: appRoutes,
    );
  }
}
