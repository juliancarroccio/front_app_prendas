import 'package:app_prenda_scanner/mainScreens/acercaDe/AcercaDe.dart';
import 'package:app_prenda_scanner/mainScreens/escanear/MostrarResultado.dart';
import 'package:app_prenda_scanner/utils/TextApp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class IngresoManual extends StatefulWidget {
  @override
  _IngresoManualState createState() => _IngresoManualState();
}

class _IngresoManualState extends State<IngresoManual> {
  int _selectedIndex = 0;

  final List<Widget> _children = [
    IngresoManual(),
    Escanear(),
  ];

  void _selectedOptionInMyBottonNavigation(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(TextApp.MANUAL_INPUT_TITTLE),
        centerTitle: true,
        elevation: 10,
        leading: Icon(Icons.keyboard),
      ),
      body: Text('Pantalla en proceso de Ingreso Manual'),
      endDrawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
              decoration:
                  BoxDecoration(color: Theme.of(context).primaryColorLight),
              child: Text(
                TextApp.DRAWER_TITTLE,
                style: TextStyle(color: Colors.white, fontSize: 24),
              )),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text(TextApp.DRAWER_OPTION_1),
            onTap: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new AcercaDe()));
            },
          )
        ],
      )),
    );
  }
}
