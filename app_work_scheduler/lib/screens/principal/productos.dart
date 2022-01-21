import 'package:flutter/material.dart';
import 'package:nav_bar/widgets/widgets.dart';


class Productos extends StatefulWidget {
  const Productos({Key? key}) : super(key: key);

  @override
  State<Productos> createState() => _MyStatefulWidgetState();
}

/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _MyStatefulWidgetState extends State<Productos>
    with TickerProviderStateMixin {
  /*late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: const Text('Productos'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'buscar',
            onPressed: () {
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text('buscar')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.filter_list),
            tooltip: 'filtrar',
            onPressed: () {
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text('Filtrar')));
            },
          ),
        ],
      ),
      /*body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Builder(builder: (context) {
              return const Text(
                'No hay productos disponibles.',
                style: TextStyle(fontSize: 20, color: Colors.blueGrey),
              );
            })
          ],
        ),
      ),*/

      body: ListView(
        padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CardProductos(),
          CardProductos(),
          CardProductos(),
          CardProductos(),
          CardProductos(),
          CardProductos(),
        ],
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        
        onPressed: () {
          Navigator.pushNamed(context, 'form_product');
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
