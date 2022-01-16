import 'package:flutter/material.dart';
import 'package:nav_bar/theme/app_theme.dart'; // importa del main

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        
        title: const Text('Configuración'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.logout),
            tooltip: 'Salir',
            onPressed: () {
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text('Cerrando Sesión')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.close),
            tooltip: 'Regresar',
            onPressed: () {
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text('')));
            },
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 16, top: 25, right: 16),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [

              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 4,
                              color: AppTheme.primary // color del circulo del perfil
                              ),
                          shape: BoxShape.circle, // forma del perfil
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://cdn-icons-png.flaticon.com/512/260/260507.png"))),
                    ),

                    //cuadro peuqeño verde
                    Positioned(
                        bottom: 0, //posiciones del cuadro peuqeño verde
                        right: 0,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, //forma del boton verde
                              border: Border.all(
                                color:
                                    Theme.of(context).scaffoldBackgroundColor,
                              ),
                              color: Colors.teal
                                  .shade400 // colordel cuadro pequeño verde
                              ),
                          child: const Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // seccion de Informacion
               Padding(
                padding: const EdgeInsets.all(1),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Column(
                      children: [
                        ListTile(
                          //leading: Icon(Icons.person, color: Colors.grey.shade400, size: 100,),
                          title: const Text('Nombre del usuario', style: TextStyle(color: Colors.black, fontSize: 18)),
                          subtitle: Text('Correo electrónico', style: TextStyle(color: Colors.grey.shade800, fontSize: 15)),
                          //trailing: Text('id - 0123456789' , style: TextStyle(color: Colors.tealAccent.shade700,)),     
                        ),
                        
                        Text('WS-23456789', style: TextStyle(color: Colors.tealAccent.shade700, fontSize: 15), textAlign: TextAlign.start),
                        
                      ],
                    ),
                  ),
                ),
              ),

              //// seccion de Informacion

              ///// boton cancel
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding:const EdgeInsets.all(8),
                child: Text('NOTIFICACIONES', style: TextStyle(fontSize: 18, color: Colors.grey.shade600),),
              ),

              Padding(
                padding: const EdgeInsets.all(1),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        ListTile(
                          //leading: Icon(Icons.alarm, color: Colors.grey.shade400, size: 50,),
                          title: const Text('Notificaciones', style: TextStyle(color: Colors.black, fontSize: 18)),
                          subtitle: Text('Notificaciones para recordatorios de actividad', style: TextStyle(color: Colors.grey.shade800, fontSize: 15)),
                        ),
                        
                        
                        
                        
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
