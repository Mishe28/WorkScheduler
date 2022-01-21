import 'package:flutter/material.dart';
import 'package:nav_bar/screens/screens.dart';
import 'package:nav_bar/theme/app_theme.dart';


class Ofertas extends StatefulWidget {
  const Ofertas({Key? key}) : super(key: key);

  @override
  State<Ofertas> createState() => _MyStatefulWidgetState();
}

/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _MyStatefulWidgetState extends State<Ofertas>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shape:
            const Border(bottom: BorderSide.none),
        title: const Text('Ofertas'),
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
              icon: Icon(Icons.analytics),
            ),
            Tab(
              icon: Icon(Icons.request_quote),
            ),
            Tab(
              icon: Icon(Icons.grading),
            ),
            Tab(
              icon: Icon(Icons.emoji_events),
            ),
            Tab(
              icon: Icon(Icons.reduce_capacity),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          Analisis(),
          Cotizacion(),
          Revision(),
          Ganado(),
          Perdido(),
        ],
      ),

    );
  }
}
