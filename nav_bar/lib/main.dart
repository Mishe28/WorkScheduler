import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'buscarpagina.dart';
import 'configurarpagina.dart';
import 'menupagina.dart';
import 'otroboton.dart';
import 'paginafavorita.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: NavBar()));
}

class NavBar extends StatefulWidget {
  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  int index = 0;

  //Aplastamos Iconos y nos lleva a  otro lado
  final screens = [
    MenuPagina(),
    BuscarPagina(), //Estos son los Iconos para importar tiene que estar en verde
    PaginaFavorita(),
    ConfigurarPagina(),
    OtroBoton(),
  ];
  //Aplastamos Iconos y nos lleva a  otro lado

  @override
  Widget build(BuildContext context) {
//  Crear  Iconos
    final items = <Widget>[
      Icon(Icons.home, size: 30),
      Icon(Icons.person, size: 30),
      Icon(Icons.book, size: 30),
      Icon(Icons.stacked_bar_chart_outlined, size: 30), // 5 iconos igual a 5 paginas
      Icon(Icons.settings, size: 30),
    ];

//  Crear  Iconos

    return Scaffold(
      backgroundColor: Colors.teal.shade50, // animacion color
      
      body: screens[index],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          iconTheme: IconThemeData(color: Colors.white),
        ),
        child: CurvedNavigationBar(
          key: navigationKey,
          color: Colors.teal.shade400, // color barra navegacion
          backgroundColor: Colors.teal.shade50,
          height: 50,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 300),
          index: index,
          items: items,
          onTap: (index) => setState(() => this.index = index),
        ),
      ),
    );
  }
}
