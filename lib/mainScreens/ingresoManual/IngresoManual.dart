import 'package:app_prenda_scanner/mainScreens/acercaDe/AcercaDe.dart';
import 'package:app_prenda_scanner/utils/TextApp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class IngresoManual extends StatefulWidget {
  @override
  _IngresoManualState createState() => _IngresoManualState();
}

class _IngresoManualState extends State<IngresoManual> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(TextApp.MANUAL_INPUT_TITTLE),
        centerTitle: true,
        elevation: 10,
        leading: Icon(Icons.keyboard),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Pantallita de inicio en proceso, sepa disculpar las molestias',
            ),
          ],
        ),
      ),
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
              //Navigator.of(context).pop();
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new AcercaDe()));
            },
          )
        ],
      )),
    );
  }
}
