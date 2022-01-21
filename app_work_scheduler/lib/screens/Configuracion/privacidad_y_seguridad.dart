import 'package:flutter/material.dart';

class PrivacidadYSeguridad extends StatelessWidget {
  const PrivacidadYSeguridad({Key? key}) : super(key: key);

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
          title: const Text('Privacidad y Seguridad',),
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Builder(builder: (context) {
              return const Text(
                'Privacidad y Seguridad',
                style: TextStyle(fontSize: 20, color: Colors.blueGrey),
              );
            })
          ],
        ),
      ),
    );
  }
}
