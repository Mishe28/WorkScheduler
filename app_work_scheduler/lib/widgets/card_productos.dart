import 'package:flutter/material.dart';
import 'package:nav_bar/theme/app_theme.dart';


class CardProductos extends StatelessWidget {
  const CardProductos({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.paid, color: AppTheme.blue, size: 40,),
            title:  Text('Nombre del producto '),
            subtitle: Text('00.00'),
            //trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios)),
          ),
        ],
      )
    );
  }
}