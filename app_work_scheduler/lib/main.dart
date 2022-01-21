import 'package:flutter/material.dart';
import 'package:nav_bar/router/app_routes.dart';
import 'package:nav_bar/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.darkTheme,
      routes: AppRoutes.routes,
      initialRoute: AppRoutes.initialRoute,
    );
  }

}
