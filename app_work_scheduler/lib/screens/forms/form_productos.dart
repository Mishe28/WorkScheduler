// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nav_bar/theme/app_theme.dart';

// ignore: camel_case_types
class Form_Producto extends StatefulWidget {
  const Form_Producto({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Form_Producto> {
  String dropdownValue = 'A';

  @override
  Widget build(BuildContext context) {
    //final routes = AppRoutes.routes;
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed:(){
              Navigator.pop(context);
            }, 
            icon: const Icon(Icons.close)
          ),
          centerTitle: true ,
          title: const Text('Agregar Producto',),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.done),
              tooltip: 'Guardado',
              onPressed: () {
                //Poner validación de los campos y de acuerdo a eso ver si se manda o no
                /*ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Se agrego el Contacto')));*/
                Navigator.pop(context);
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          
          scrollDirection: Axis.vertical,
          child: Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(children: [
                //imput
                const Text('Información de Producto', style: TextStyle(fontSize: 20, fontWeight:FontWeight.bold ),),
                const SizedBox(height: 10.0),
                //Código
                TextFormField(
                  maxLength: 10,
                  decoration: InputDecoration(
                    hintText: 'Código',
                    labelText: 'Código',
                    labelStyle: TextStyle(
                      color: AppTheme.grey600,
                    ),

                    //helperText: 'Helper text',
                    suffixIcon: Icon(
                      Icons.view_column,
                      color: AppTheme.grey600,
                    ),
              
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: AppTheme.grey600,
                        width: 2.0
                      ),
                    ),

                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: AppTheme.primary, width: 2.0),
                    )
                  ),
                ),

                const SizedBox(height: 10.0),

                //Nombre
                TextFormField(
                  maxLength: 30,
                  decoration: InputDecoration(
                    hintText: 'Nombre del producto',
                    labelText: 'Nombre',
                    labelStyle: TextStyle(
                      color: AppTheme.grey600,
                    ),

                    //helperText: 'Helper text',
                    suffixIcon: Icon(
                      Icons.shopping_cart,
                      color: AppTheme.grey600,
                    ),
              
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: AppTheme.grey600,
                        width: 2.0
                      ),
                    ),

                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: AppTheme.primary, width: 2.0),
                    )
                  ),
                ),

                SizedBox(height: 10.0),

                //Precio
                TextFormField(
                  
                  maxLength: 10,
                  decoration: InputDecoration(
                    hintText: 'Precio',
                    labelText: 'Precio',
                    labelStyle: TextStyle(
                      color: AppTheme.grey600,
                    ),

                    //helperText: 'Helper text',
                    suffixIcon: Icon(
                      Icons.attach_money,
                      color: AppTheme.grey600,
                    ),
              
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: AppTheme.grey600,
                        width: 2.0
                      ),
                    ),

                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: AppTheme.primary, width: 2.0),
                    )
                  ),
                ),

                SizedBox(height: 10.0),
                
                //Descripción
                TextFormField(
                  maxLength: 150,
                  decoration: InputDecoration(
                    hintText: 'Descripción del producto',
                    labelText: 'Descripción',
                    labelStyle: TextStyle(
                      color: AppTheme.grey600,
                    ),

                    //helperText: 'Helper text',
                    suffixIcon: Icon(
                      Icons.assignment,
                      color: AppTheme.grey600,
                    ),
              
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: AppTheme.grey600,
                        width: 2.0
                      ),
                    ),

                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: AppTheme.primary, width: 2.0),
                    )
                  ),
                ),

                SizedBox(height: 10.0),

                //CATEGORÍA
                //dropDown Buttom
                /*SizedBox(height: 10.0),
                Text('DropDown Button'),
                SizedBox(height: 10.0),
                Container(
                  padding: EdgeInsets.only(left: 5.0, right: 5.0),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(3.0)),
                  child: DropdownButton<String>(
                    value: dropdownValue,
                    isExpanded: true,
                    icon: Icon(Icons.keyboard_arrow_down, size: 22),
                    underline: SizedBox(),
                    items: <String>['A', 'B', 'C', 'D'].map((String value) {
                      return new DropdownMenuItem<String>(
                        value: value,
                        child: new Text(value),
                      );
                    }).toList(),
                    onChanged: (value) {
                      //Do something with this value
                      setState(() {
                        dropdownValue = value!;
                      });
                    },
                  ),
                ),*/

                SizedBox(height: 10.0),
              ])),
        ));
  }
}
