import 'package:flutter/material.dart';
import 'package:nav_bar/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static Map<String, Widget Function(BuildContext)> routes = {
        'home'     : (BuildContext context) => const NavBar(),
        'dashboard': (BuildContext context) => const Dashboard(),
        'contact': (BuildContext context) => const Contactos(),
        'product'    : (BuildContext context) => const Productos(),
        'activity'     : (BuildContext context) => const Actividades(),
        'settings'    : (BuildContext context) => const Settings(),
        'form_contact'     : (BuildContext context) => const Form_Contacto(),
        'form_bussiness'     : (BuildContext context) => const Form_Empresa(),
        'form_leaflet'     : (BuildContext context) => const Form_Prospecto(),
        'form_product'     : (BuildContext context) => const Form_Producto(),
        'contact_contact'     : (BuildContext context) => const ContactoContactos(),
        'contact_leaflet'     : (BuildContext context) => const ContactoProspecto(),
        'contact_bussiness'     : (BuildContext context) => const ContactoEmpresa(),

  };

}