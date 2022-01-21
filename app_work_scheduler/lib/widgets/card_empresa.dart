import 'package:flutter/material.dart';
import 'package:nav_bar/theme/app_theme.dart';


class CardEmpresa extends StatelessWidget {
  const CardEmpresa({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.business, color: AppTheme.blue, size: 40,),
            title:  Text('Empresa'),
            //subtitle: Text('Subtitulo'),
            //trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios)),
          ),
        ],
      )
    );
  }
}