import 'package:flutter/material.dart'; // importa del main

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  // para importar en el main hay  q poner lo mswimo
  @override
  Widget build(BuildContext context) {
    //var black = Colors.black;
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade50, // fonde de la otra pagina
      appBar: AppBar(
        shape:
            Border(bottom: BorderSide(color: Colors.teal.shade400, width: 3)),
        foregroundColor: Colors.white,
        backgroundColor: Colors.teal.shade400, //color background del titulo
        title: const Text("Dashboard"),
        elevation: 0,
        //centerTitle: true,
      ),
      //body: Text("Dashboard"),
    );
  }
}
