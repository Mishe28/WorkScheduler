import 'package:flutter/material.dart'; // importa del main

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade50, // fondo de la otra pagina
      appBar: AppBar(
        backgroundColor: Colors.teal.shade400, // fondo de la AppBar
        title: const Text('Configuración'),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 16, top: 25, right: 16),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Text(
                "Perfil de  Usuario",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Colors.teal.shade400),
              ),
              const SizedBox(
                height: 15,
              ),
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 4,
                              color: Theme.of(context)
                                  .scaffoldBackgroundColor // color del circulo del perfil
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
                height: 35,
              ),
              // seccion de Informacion
              TextField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(bottom: 3),
                    labelText: "Nombre Completo",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintText: "Ejemplo pepito juarez",
                    hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal.shade400 // nombre Completo Color
                        )),
              ),
              //segundo text field
              Padding(
                padding:
                    const EdgeInsets.only(bottom: 35.0), // espacio entre lineas
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(bottom: 3),
                      labelText: "Email",
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      hintText: "Correo Electronico",
                      hintStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal.shade400 // nombre Completo Color
                          )),
                ),
              ),
              //segundo text field
              //// seccion de Informacion

              ///// boton cancel
              const SizedBox(
                height: 35,
              ),
              Row(
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    child: const Text(
                        "Acti/Desac Notificaciones", // boton de cancel
                        style: TextStyle(fontSize: 14, letterSpacing: 2.2)),
                  ), // boton cancel
                  // boton cerrar sesion
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "cerrar sesion ",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ), // boton cerrar sesion
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
