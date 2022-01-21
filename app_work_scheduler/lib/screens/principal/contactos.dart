import 'package:flutter/material.dart';
import 'package:nav_bar/screens/screens.dart';
import 'package:nav_bar/theme/app_theme.dart';


class Contactos extends StatefulWidget {
  const Contactos({Key? key}) : super(key: key);

  @override
  State<Contactos> createState() => _MyStatefulWidgetState();
}

/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _MyStatefulWidgetState extends State<Contactos>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shape:
            const Border(bottom: BorderSide.none),
        title: const Text('Agenda'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'buscar',
            onPressed: () {
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text('buscar')));
            },
          ),
        ],

         
        bottom: TabBar( 
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: AppTheme.primary
          ),
          //indicatorColor: Colors.teal.shade800,
          //unselectedLabelColor: Colors.white,
          labelColor: Colors.white,
          controller: _tabController,
          tabs: const <Widget>[
            Tab(
              child: Text(
                "Contactos",
                style: TextStyle(fontSize: 20),
              ),
              //icon: Icon(Icons.person),
            ),
            Tab(
              child: Text(
                "Empresas",
                style: TextStyle(fontSize: 20),
              ),
              //icon: Icon(Icons.business),
            ),
            Tab(
              child: Text(
                "Prospectos",
                style: TextStyle(fontSize: 20),
              ),
              //icon: Icon(Icons.person_add),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          ContactoContactos(),
          ContactoEmpresa(),
          ContactoProspecto(),
        ],
      ),

    );
  }
}
