import 'package:flutter/material.dart';

class ContactoProspecto extends StatefulWidget {
  const ContactoProspecto({Key? key}) : super(key: key);


  @override
  State<ContactoProspecto> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ContactoProspecto> {
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context, 'form_leaflet');
        },
        tooltip: 'form contact',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}