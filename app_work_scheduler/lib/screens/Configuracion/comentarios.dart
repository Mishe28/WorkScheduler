import 'package:flutter/material.dart';

class Comentarios extends StatelessWidget {
  const Comentarios({Key? key}) : super(key: key);

  // para importar en el main hay  q poner lo mswimo
  @override
  Widget build(BuildContext context) {
    //var black = Colors.black;
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            onPressed:(){
              Navigator.pop(context);
            }, 
            icon: const Icon(Icons.close, color: Colors.green,)
          ),
          centerTitle: true ,
          title: const Text('Comentarios',),
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Builder(builder: (context) {
              return const Text(
                'Enviar Comentarios',
                style: TextStyle(fontSize: 20, color: Colors.blueGrey),
              );
            })
          ],
        ),
      ),
    );
  }
}
