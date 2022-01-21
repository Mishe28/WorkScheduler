import 'package:flutter/material.dart';
import 'package:nav_bar/theme/app_theme.dart';


class CardContactos extends StatelessWidget {
  const CardContactos({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.how_to_reg, color: AppTheme.blue, size: 40,),
            title:  Text('Contacto '),
            subtitle: Text('Subtitulo'),
            //trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios)),
          ),
        ],
      )
    );
  }
}