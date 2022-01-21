import 'package:flutter/material.dart';

class Analisis extends StatefulWidget {
  const Analisis({Key? key}) : super(key: key);


  @override
  State<Analisis> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Analisis> {
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Builder(builder: (context) {
              return const Text(
                'Ofertas en analisis.',
                style: TextStyle(fontSize: 20, color: Colors.blueGrey),
              );
            })
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          //Navigator.pushNamed(context, 'form_contact');
        },
        tooltip: 'form contact',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}