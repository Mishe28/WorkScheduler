import 'package:flutter/material.dart'; // importa del main

class ConfigurarPagina extends StatelessWidget {
  // para importar en el main hay  q poner lo mswimo
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade50, // fonde de la otra pagina
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.teal.shade400, //color background del titulo
        title: Text("Reportes"),
        elevation: 0,
        
        //centerTitle: true,
      ),
      //body: Text("Reportes",style: TextStyle(fontSize: 20),),
    );
  }
}
