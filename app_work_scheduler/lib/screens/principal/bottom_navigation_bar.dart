import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:nav_bar/screens/screens.dart';
import 'package:nav_bar/theme/app_theme.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);
  @override
  _NavBarState createState() => _NavBarState();

}

class _NavBarState extends State<NavBar> {
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  int index = 0;

  //Aplastamos Iconos y nos lleva a  otro lado
  final screens = [
    const Dashboard(),
    const Contactos(), //Estos son los Iconos para importar tiene que estar en verde
    const Ofertas(),
    const Productos(),
    const Actividades(),
    const Settings(),

  ];

  @override
  Widget build(BuildContext context) {
//  Crear  Iconos
    final items = <Widget>[
      const Icon(Icons.home, size: 30),
      const Icon(Icons.contacts, size: 30),
      const Icon(Icons.local_offer, size: 30),
      const Icon(Icons.store, size: 30),
      const Icon(Icons.event_available, size: 30), 
      const Icon(Icons.settings, size: 30),
    ];

    return Scaffold(
      body: screens[index],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        child: CurvedNavigationBar(
          key: navigationKey,
          color: AppTheme.primary, // color barra navegacion
          backgroundColor: Colors.transparent,
          //buttonBackgroundColor: AppTheme.primary,
          height: 50,
          //animationCurve: Curves.easeInOut,
          
          animationDuration: const Duration(milliseconds: 300),
          index: index,
          items: items,
          onTap: (index) => setState(() => this.index = index),
        ),
      ),
    );
    

    
  }
}
