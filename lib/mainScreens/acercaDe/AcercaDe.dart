import 'package:app_prenda_scanner/utils/TextApp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AcercaDe extends StatefulWidget {
  @override
  _AcercaDeState createState() => _AcercaDeState();
}

class _AcercaDeState extends State<AcercaDe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(TextApp.ABOUT_TITTLE),
        centerTitle: true,
        elevation: 10,
        //leading: Icon(Icons.info_outline),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 16.0),
        child: Column(
          children: <Widget>[
            Text(
              TextApp.ABOUT_TEXT,
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
      ),
    );
  }
}
