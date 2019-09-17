import 'package:flutter_web/material.dart';
import 'package:my_website_flutter/footer.dart';
import 'header.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kelvin Lartey - Résumé',
      theme: ThemeData(
          primaryColor: Colors.white,
          accentColor: Colors.black26,
          fontFamily: 'OpenSans'),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Hi',
            style: TextStyle(color: Colors.white, fontFamily: 'FiraMono'),
          ),
          centerTitle: true,
          backgroundColor: Colors.black87,
        ),
        body: Container(
          decoration: BoxDecoration(color: Colors.black12),
          child: Center(
            child: ListView(
              children: <Widget>[
                Header(),
                SizedBox(height: 50),
                Footer(),
              ],
            ),
          ),
        ));
  }
}
