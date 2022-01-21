import 'package:flutter/material.dart';
import 'package:nav_bar/screens/Configuracion/comentarios.dart';
import 'package:nav_bar/screens/Configuracion/comunidad.dart';
import 'package:nav_bar/screens/Configuracion/guia_de_ayuda.dart';
import 'package:nav_bar/screens/Configuracion/politica_de_privacidad.dart';
import 'package:nav_bar/screens/Configuracion/privacidad_y_seguridad.dart';
import 'package:nav_bar/screens/Configuracion/terminos_y_condiciones.dart';
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
        'login'     : (BuildContext context) => const LoginPage(),
        'icon_container'     : (BuildContext context) =>  const IconContainer(url: "images/logofinal.png"),
        'register'     : (BuildContext context) => const Register(),

        'oferta_analisis'     : (BuildContext context) => const Analisis(),
        'oferta_cotizacion': (BuildContext context) => const Cotizacion(),
        'oferta_ganado': (BuildContext context) => const Ganado(),
        'oferta_perdida'    : (BuildContext context) => const Perdido(),
        'oferta_revision'     : (BuildContext context) => const Revision(),
        'ofertas'    : (BuildContext context) => const Ofertas(),
        'comentarios'     : (BuildContext context) => const Comentarios(),
        'comunidad'     : (BuildContext context) => const Comunidad(),
        'guia_ayuda'     : (BuildContext context) => const GuiaAyuda(),
        'politica_privacidad'     : (BuildContext context) => const PoliticaPrivacidad(),
        'privacidad_seguridad'     : (BuildContext context) => const PrivacidadYSeguridad(),
        'terminos_condiciones'     : (BuildContext context) => const TerminosYCondiciones(),
  };

}