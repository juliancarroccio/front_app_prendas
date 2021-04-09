import 'package:app_prenda_scanner/mainScreens/acercaDe/AcercaDe.dart';
import 'package:app_prenda_scanner/utils/TextApp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:last_qr_scanner/last_qr_scanner.dart';


class Scan extends StatefulWidget {
  const Scan({
    Key key,
  }) : super(key: key);
  @override
  _ScanState createState() => _ScanState();
}

class _ScanState extends State<Scan> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  var codeText = ""; 
  var controller;

  @override
  void initState() {
    super.initState();
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    final channel = controller.channel;
    controller.init(qrKey);
    channel.setMethodCallHandler((MethodCall call) async {
      switch (call.method) {
        case "onRecognizeQR":
          dynamic arguments = call.arguments;
          setState(() {
            codeText = arguments.toString();
          });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: Text(TextApp.SCAN_TITTLE),
          centerTitle: true,
          elevation: 10,
          leading: Icon(Icons.qr_code_scanner)),
        body: Column(
          children: <Widget>[
            Expanded(
              child: LastQrScannerPreview(
                key: qrKey,
                onQRViewCreated: _onQRViewCreated,
              ),
              flex: 4,
            ),
            Expanded(
              child: Text("This is the result of scan: $codeText"),
              flex: 1,
            )
          ],
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
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new AcercaDe()));
            },
          )
        ],
      )),
    );
  }
}


