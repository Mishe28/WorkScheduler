import 'package:flutter/material.dart'; // importa del main
class BuscarPagina extends StatefulWidget {
  const BuscarPagina({Key? key}) : super(key: key);

  @override
  State<BuscarPagina> createState() => _MyStatefulWidgetState();
}

/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _MyStatefulWidgetState extends State<BuscarPagina>
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
      backgroundColor: Colors.teal.shade50, // fondo de la otra pagina
      appBar: AppBar(
        backgroundColor: Colors.teal.shade400, // fondo de la AppBar
        title: const Text('Contactos'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('buscar')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.filter_list),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Filtrar')));
            },
          ),
        ],
        
        bottom: TabBar(
          controller: _tabController,
          tabs: const <Widget>[
            Tab(
              child: Text("Contactos",style: TextStyle(fontSize: 18),),
            ),
            Tab(
               child: Text("Empresas",style: TextStyle(fontSize: 18),),
            ),
            Tab(
               child: Text("Prospectos",style: TextStyle(fontSize: 18),),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal.shade400,
        onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('agregar contactos')));
            },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    );
  }
}
