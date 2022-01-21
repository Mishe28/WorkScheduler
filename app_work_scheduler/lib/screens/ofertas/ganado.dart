import 'package:flutter/material.dart';

class Ganado extends StatefulWidget {
  const Ganado({Key? key}) : super(key: key);


  @override
  State<Ganado> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Ganado> {
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Builder(builder: (context) {
              return const Text(
                'Cerrado ganado',
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