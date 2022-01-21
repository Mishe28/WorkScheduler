import 'package:flutter/material.dart';

class Revision extends StatefulWidget {
  const Revision({Key? key}) : super(key: key);


  @override
  State<Revision> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Revision> {
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Builder(builder: (context) {
              return const Text(
                'Negociación / Revisión',
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