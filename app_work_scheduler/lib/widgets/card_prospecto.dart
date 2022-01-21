import 'package:flutter/material.dart';
import 'package:nav_bar/theme/app_theme.dart';

class CardProspectos extends StatelessWidget {
  const CardProspectos({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.person_add, color: AppTheme.blue, size: 40,),
            title:  Text('Prospecto'),
            subtitle: Text('Subtitulo'),
            //trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios)),
          ),
        ],
      )
    );
  }
}