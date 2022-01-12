import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'contactos.dart';
import 'actividades.dart';
import 'dashboard.dart';
import 'settings.dart';
import 'productos.dart';

void main() {
  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: NavBar()));
}

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  int index = 0;

  //Aplastamos Iconos y nos lleva a  otro lado
  final screens = [
    const Dashboard(),
    const Contactos(), //Estos son los Iconos para importar tiene que estar en verde
    const Productos(),
    const Actividades(),
    const Settings(),
  ];
  //Aplastamos Iconos y nos lleva a  otro lado

  @override
  Widget build(BuildContext context) {
//  Crear  Iconos
    final items = <Widget>[
      const Icon(Icons.home, size: 30),
      const Icon(Icons.person, size: 30),
      const Icon(Icons.store, size: 30),
      const Icon(Icons.calendar_today, size: 30), // 5 iconos igual a 5 paginas
      const Icon(Icons.settings, size: 30),
    ];

//  Crear  Iconos

    return Scaffold(
      backgroundColor: Colors.blueGrey.shade50, // animacion color

      body: screens[index],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        child: CurvedNavigationBar(
          key: navigationKey,
          color: Colors.teal.shade400, // color barra navegacion
          backgroundColor: Colors.blueGrey.shade50,
          height: 50,
          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(milliseconds: 300),
          index: index,
          items: items,
          onTap: (index) => setState(() => this.index = index),
        ),
      ),
    );
  }
}
