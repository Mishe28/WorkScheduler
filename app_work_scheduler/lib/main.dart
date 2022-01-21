import 'package:flutter/material.dart';
import 'package:nav_bar/preferencias/preferences.dart';
import 'package:nav_bar/provider/theme_provider.dart';
import 'package:nav_bar/router/app_routes.dart';
import 'package:nav_bar/theme/app_theme.dart';
import 'package:provider/provider.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();

  await Preferences.init();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider(isDarkmode: Preferences.isDarkmode))
      ],
      child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: Provider.of<ThemeProvider>(context).currentTheme,
      routes: AppRoutes.routes,
      initialRoute: AppRoutes.initialRoute,
    );
  }

}
