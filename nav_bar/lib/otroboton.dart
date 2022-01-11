import 'package:flutter/material.dart'; // importa del main

class OtroBoton extends StatelessWidget {
  // para importar en el main hay  q poner lo mswimo
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade50, // fonde de la otra pagina
      body: Text("Settings"),
    );
  }
}
