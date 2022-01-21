import 'package:flutter/material.dart';
import 'package:nav_bar/widgets/card_prospecto.dart';
import 'package:nav_bar/widgets/widgets.dart';

class ContactoProspecto extends StatefulWidget {
  const ContactoProspecto({Key? key}) : super(key: key);


  @override
  State<ContactoProspecto> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ContactoProspecto> {
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

      body: ListView(
        padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CardProspectos(),
          CardProspectos(),
          CardProspectos(),
          CardProspectos(),
          CardProspectos(),
          
         
        ],
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