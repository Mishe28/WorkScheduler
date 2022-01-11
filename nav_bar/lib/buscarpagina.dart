import 'package:flutter/material.dart'; // importa del main

class BuscarPagina extends StatelessWidget {
  const BuscarPagina({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _MyStatefulWidgetState extends State<MyStatefulWidget>
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
      backgroundColor: Colors.teal.shade50, // fonde de la otra pagina
      appBar: AppBar(
        backgroundColor: Colors.teal.shade400, // fonde de la otra pagina
        title: const Text('Contactos'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const <Widget>[
            Tab(
              child: Text("Contactos"),
            ),
            Tab(
               child: Text("Empresas"),
            ),
            Tab(
               child: Text("Prospectos"),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          Center(
            child: Text("personas individuales"),
          ),
          Center(
            child: Text("empresas "),
          ),
          Center(
            child: Text("posibles clientes"),
          ),
        ],
      ),
    );
  }
}
