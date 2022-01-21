import 'package:flutter/material.dart';
import 'package:nav_bar/widgets/widgets.dart';


class ContactoContactos extends StatefulWidget {
  const ContactoContactos({Key? key}) : super(key: key);


  @override
  State<ContactoContactos> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ContactoContactos> {
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

      body: ListView(
        padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CardContactos(),
          CardContactos(),
          CardContactos(),
          CardContactos(),

         
        ],
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