import 'package:app_prenda_scanner/mainScreens/acercaDe/AcercaDe.dart';
import 'package:app_prenda_scanner/utils/TextApp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Escanear extends StatefulWidget {
  @override
  _EscanearState createState() => _EscanearState();
}

class _EscanearState extends State<Escanear> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(TextApp.SCAN_TITTLE),
          centerTitle: true,
          elevation: 10,
          leading: Icon(Icons.qr_code_scanner)),
      body: Text('Pantalla en proceso escanear'),
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
