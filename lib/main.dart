import 'package:flutter/material.dart';
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
      home: Home(title: 'Home Page'),
    );
  }
}

class Home extends StatelessWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  final double spacing = 20;

  final topicStyle = TextStyle(
      decoration: TextDecoration.underline,
      fontSize: 17,
      fontWeight: FontWeight.bold,
      fontFamily: 'FiraMono',
      height: 2);
  final titleStyle = TextStyle(fontSize: 16, fontFamily: 'FiraMono', height: 2);
  final textStyle = TextStyle(fontFamily: 'OpenSans', height: 2);

  Widget buildWorkEducationSection() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          // EDUCATION
          Column(
            children: [
              Text('Education', style: topicStyle),
              Row(children: [
                Text('KNUST ', style: titleStyle),
                Text('BSc. Computer Engineering')
              ]),
              Row(children: [
                Text('KNUST ', style: titleStyle),
                Text('MPhil. Computer Engineering', style: textStyle),
              ])
            ],
          ),

          // WORK
          Column(
            children: [
              Text('Work', style: topicStyle),
              Row(children: [
                Text('Asqii Inc. ', style: titleStyle),
                Text('Software Developer ', style: textStyle),
                Text('2015 - 2017', style: textStyle)
              ]),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildPortfolioSection() {
    return Row(children: [
      Expanded(
          child: Column(
        children: <Widget>[
          Text('Some stuff I\'ve worked on...', style: titleStyle),
          Center(
            child: Container(
              height: 50,
              decoration: BoxDecoration(color: Colors.red),
            ),
          )
        ],
      ))
    ]);
  }

  Widget buildAboutMeSection() {
    return Row(children: [
      Expanded(
          child: Column(
        children: [
          Text('About me', style: titleStyle),
          Center(
            child: Container(
              height: 50,
              // child: Text(' stuff\nyh'),
            ),
          )
        ],
      ))
    ]);
  }

  @override
  Widget build(BuildContext context) {
    var _gap = SizedBox(height: spacing);

    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Hi',
            style: TextStyle(color: Colors.white, fontFamily: 'FiraMono'),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: Container(
          decoration: BoxDecoration(color: Colors.black12),
          child: Center(
            child: ListView(
              children: <Widget>[
                Header(),
                _gap,
                buildAboutMeSection(),
                _gap,
                buildWorkEducationSection(),
                _gap,
                buildPortfolioSection(),
                _gap,
                Footer(),
              ],
            ),
          ),
        ));
  }
}
