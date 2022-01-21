import 'package:flutter/material.dart';
import 'package:nav_bar/widgets/card_empresa.dart';
import 'package:nav_bar/widgets/widgets.dart';

class ContactoEmpresa extends StatefulWidget {
  const ContactoEmpresa({Key? key}) : super(key: key);


  @override
  State<ContactoEmpresa> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ContactoEmpresa> {
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

      body: ListView(
        padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CardEmpresa(),
          SizedBox(height: 20),
          CardEmpresa(),
          SizedBox(height: 20),
          CardEmpresa(),
          SizedBox(height: 20),
          CardEmpresa(),
          SizedBox(height: 20),
          CardEmpresa(),
          SizedBox(height: 20),
          
         
        ],
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