import 'package:flutter/material.dart';
import 'package:nav_bar/screens/screens.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: <Color>[
            Color(0x00ef5350),
            Color(0x00ef5350) //0xFF008080
          ], begin: Alignment.topCenter // posocion gradiente color
              ),
        ),
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 100),
          children: <Widget>[
            Column(
              //wrap clomg
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                const IconContainer(
                  url: "images/logo_ws.png", // logo del login
                ),
                const SizedBox(
                  width: double.infinity,
                  height: 20.0,
                ),
                const Text(
                  "Login",
                  style: TextStyle(fontSize: 30.0 // tamaño letra primera
                      ),
                ),

                const Divider(
                  height: 20.0,
                ),
                // dos botones
                const SizedBox(
                  width: double.infinity,
                  height: 10.0,
                ),

                // 2do boton de login
                TextField(
                  decoration: InputDecoration(
                    hintText: " Correo Electronico",
                    labelText: " Correo Electronico ",
                    suffixIcon: const Icon(Icons.email_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                // 2do boton de login
                const Divider(
                  height: 15.0,
                ),

                // 3er boton de login
                TextField(
                  enableInteractiveSelection: false, // encriotar contraseña
                  obscureText: true, //  encriptar contraseña
                  decoration: InputDecoration(
                    hintText: " Contraseña",
                    labelText: " Contraseña",
                    suffixIcon: const Icon(Icons.password),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                // 3er boton de login
                const Divider(
                  height: 15.0,
                ),
                // Boton Ingresar App
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'home');
                  },
                  child: const Text(
                    "Iniciar Sesion ",
                  ),
                ),
                // Boton Ingresar App
                 const SizedBox(
                  width: double.infinity,
                  height: 10.0,
                ),
                // Crear Cuenta
                ElevatedButton(
                 onPressed: () {
                   Navigator.pushNamed(context, 'register');
                 },
                 child: const Text('Crear una cuenta')
                 ),
               
              ],
            )
          ],
        ),
      ),
    );
  }
}
