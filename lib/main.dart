import 'package:flutter/material.dart';
import 'package:news_app/core/config/application_theme_manager.dart';
import 'package:news_app/core/config/pages_route_name.dart';

import 'core/config/routes.dart';

void main() {
  runApp(const MyApp());
}

GlobalKey navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ApplicationThemeManager.applicationThemeData,
      themeMode: ThemeMode.light,
      initialRoute: PagesRouteName.initial,
      onGenerateRoute: Routes.onGenerateRoutes,
    );
  }
}
