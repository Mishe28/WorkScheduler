import 'package:flutter/material.dart';

class ContactoEmpresa extends StatefulWidget {
  const ContactoEmpresa({Key? key}) : super(key: key);


  @override
  State<ContactoEmpresa> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ContactoEmpresa> {
  
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
          Navigator.pushNamed(context, 'form_bussiness');
        },
        tooltip: 'form contact',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}