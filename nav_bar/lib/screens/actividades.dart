import 'package:flutter/material.dart'; // importa del main
import 'package:table_calendar/table_calendar.dart';

class Actividades extends StatelessWidget {
  const Actividades({Key? key}) : super(key: key);

  // para importar en el main hay  q poner lo mswimo
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      appBar: AppBar(
        foregroundColor: Colors.white,
        
        title: const Text("Actividades y tareas"),
        elevation: 0,

        //centerTitle: true,
      ),
      //body: Text("Proyectos"),
      body: TableCalendar(
          focusedDay: DateTime.now(),
          firstDay: DateTime.now(),
          lastDay: DateTime.now().add(const Duration(days: 300))),
    );
  }
}
