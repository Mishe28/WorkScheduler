import 'package:flutter/material.dart';
import 'package:nav_bar/theme/app_theme.dart'; // importa del main
//import 'package:settings_ui/settings_ui.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool isDarkmode =false;
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
              Navigator.pushNamed(context, 'login');
            },
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 5, top: 15, right: 5, bottom: 15),
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
                              width: 2,
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
                                color:AppTheme.primary,
                              ),
                              color: AppTheme.secondary // colordel cuadro pequeño verde
                              ),
                          child: Icon(
                            Icons.edit,
                            color: AppTheme.primary
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
                padding: const EdgeInsets.only(),
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
                          title: Text('Nombre del usuario', style: TextStyle(color: AppTheme.blue, fontSize: 18)),
                          subtitle: Text('Correo electrónico', style: TextStyle(color: Colors.grey.shade600, fontSize: 15)),
                          //trailing: Text('id - 0123456789' , style: TextStyle(color: Colors.tealAccent.shade700,)),     
                        ),
                        
                        Text('WS-23456789', style: TextStyle(color: Colors.tealAccent.shade700, fontSize: 15), textAlign: TextAlign.start),
                        
                      ],
                    ),
                  ),
                ),
              ),

              
              const SizedBox(
                height: 20,
              ),

              //General
              Padding(
                padding:const EdgeInsets.all(8),
                child: Text('CONFIGURACIÓN DE LA APLICACIÓN', style: TextStyle(fontSize: 18, color: Colors.grey.shade600),),
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
                          title: Text('Notificaciones', style: TextStyle(color: AppTheme.blue, fontSize: 18)),
                          subtitle: Text('Notificaciones para recordatorios de actividad', style: TextStyle(color: Colors.grey.shade600, fontSize: 15)),
                          trailing: Switch(
                            value: false, 
                            onChanged: (bool newValue) {},
                          ),
                        ), 

                        const Divider(),

                        ListTile(
                          title: Text('Tema oscuro', style: TextStyle(color: AppTheme.blue, fontSize: 18)),
                          //subtitle: Text('Active el tema oscuro para una mejor ', style: TextStyle(color: Colors.grey.shade600, fontSize: 15)),
                          trailing: Switch.adaptive(
                            activeColor: AppTheme.primary,
                            value: isDarkmode, 
                            onChanged: (value){
                              isDarkmode = value;
                              setState(() {
                                
                              });
                            }
                          )
                        ),   
                      ],
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              //Privacidad
              Padding(
                padding:const EdgeInsets.all(8),
                child: Text('ADMINISTRAR PRIVACIDAD', style: TextStyle(fontSize: 18, color: Colors.grey.shade600),),
              ),

              Padding(
                padding: const EdgeInsets.all(0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text('Privacidad y Seguridad', style: TextStyle(color: AppTheme.blue, fontSize: 18)),
                          subtitle: Text('Explore las formas de aumentar la seguridad y privacidad de su cuenta', style: TextStyle(color: Colors.grey.shade600, fontSize: 15)),
                          trailing: IconButton(
                            onPressed: (){
                              Navigator.pushNamed(context, '');
                            }, 
                            icon:const Icon(Icons.arrow_forward_ios)
                          )
                        ),   
                      ],
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              //Ayuda y soporte Tecnico
              Padding(
                padding:const EdgeInsets.all(8),
                child: Text('AYUDA Y SOPORTE TÉCNICO', style: TextStyle(fontSize: 18, color: Colors.grey.shade600),),
              ),

              Padding(
                padding: const EdgeInsets.all(0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text('Enviar comentarios', style: TextStyle(color: AppTheme.blue, fontSize: 18)),
                          trailing: IconButton(
                            onPressed: (){
                              Navigator.pushNamed(context, '');
                            }, 
                            icon:const Icon(Icons.arrow_forward_ios)
                          )
                        ), 

                        const Divider(),
                        
                        ListTile(
                          title: Text('Guía de ayuda', style: TextStyle(color: AppTheme.blue, fontSize: 18)),
                          trailing: IconButton(
                            onPressed: (){
                              Navigator.pushNamed(context, '');
                            }, 
                            icon:const Icon(Icons.arrow_forward_ios)
                          )
                        ), 

                        const Divider(),
                        
                        ListTile(
                          title: Text('Comunidad', style: TextStyle(color: AppTheme.blue, fontSize: 18)),
                          trailing: IconButton(
                            onPressed: (){
                              Navigator.pushNamed(context, '');
                            }, 
                            icon:const Icon(Icons.arrow_forward_ios)
                          )
                        ), 
                         
                      ],
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              //Ayuda y soporte Tecnico
              Padding(
                padding:const EdgeInsets.all(8),
                child: Text('INFORMACIÓN LEGAL', style: TextStyle(fontSize: 18, color: Colors.grey.shade600),),
              ),

              Padding(
                padding: const EdgeInsets.all(0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text('Terminos y condiciones', style: TextStyle(color: AppTheme.blue, fontSize: 18)),
                          trailing: IconButton(
                            onPressed: (){
                              Navigator.pushNamed(context, '');
                            }, 
                            icon:const Icon(Icons.arrow_forward_ios)
                          )
                        ), 

                        const Divider(),
                        
                        ListTile(
                          title: Text('Política de privacidad', style: TextStyle(color: AppTheme.blue, fontSize: 18)),
                          trailing: IconButton(
                            onPressed: (){
                              Navigator.pushNamed(context, '');
                            }, 
                            icon:const Icon(Icons.arrow_forward_ios)
                          )
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
