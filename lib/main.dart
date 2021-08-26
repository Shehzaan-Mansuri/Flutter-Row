import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Row Widget"),
          centerTitle: true,
        ),
        body: Row(
          children: const <Widget>[
            Expanded(
              child: Text('Deliver features faster', textAlign: TextAlign.center),
            ),
            Expanded(
              child: Text('Craft beautiful UIs', textAlign: TextAlign.center),
            ),
            Expanded(
              child: FittedBox(
                fit: BoxFit.contain, // otherwise the logo will be tiny
                child: FlutterLogo(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
