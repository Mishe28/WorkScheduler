import 'package:flutter/material.dart'; // importa del main

class Ofertas extends StatelessWidget {
  const Ofertas({Key? key}) : super(key: key);

  // para importar en el main hay  q poner lo mswimo
  @override
  Widget build(BuildContext context) {
    //var black = Colors.black;
    return Scaffold(
      //backgroundColor: Colors.blueGrey.shade50, // fonde de la otra pagina
      appBar: AppBar(
        title: const Text("Ofertas"),
        elevation: 0,
        //centerTitle: true,
      ),
      //body: Text("Dashboard"),
    );
  }
}