import 'package:flutter/material.dart'; // importa del main

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  // para importar en el main hay  q poner lo mswimo
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade50, // fonde de la otra pagina
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.teal.shade400, //color background del titulo
        title: const Text("Configuración"),
        elevation: 0,
        
        //centerTitle: true,
      ),
      //body: const Text("Settings"),
    );
  }
}