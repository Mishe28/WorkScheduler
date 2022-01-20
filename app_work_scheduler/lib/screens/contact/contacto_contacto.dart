import 'package:flutter/material.dart';

class ContactoContactos extends StatefulWidget {
  const ContactoContactos({Key? key}) : super(key: key);


  @override
  State<ContactoContactos> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ContactoContactos> {
  
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
          Navigator.pushNamed(context, 'form_contact');
        },
        tooltip: 'form contact',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}