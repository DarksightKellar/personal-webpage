import 'package:flutter/material.dart';
import 'package:my_website_flutter/footer.dart';
import 'package:universal_html/html.dart' as web;

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

  final titleStyle = TextStyle(
    fontSize: 16,
    fontFamily: 'FiraMono',
    height: 2,
    fontWeight: FontWeight.bold,
  );

  final textStyle = TextStyle(fontFamily: 'OpenSans', height: 2);

  Widget _buildWorkEducationSection() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // EDUCATION
                Column(
                  children: [
                    Text('Education', style: topicStyle),
                    Row(children: [
                      Text('KNUST ', style: titleStyle),
                      Text('BSc. Computer Engineering (2012 - 2016)')
                    ]),
                    Row(children: [
                      Text('KNUST ', style: titleStyle),
                      Text('MPhil. Computer Engineering (2017 - 2019)', style: textStyle),
                    ])
                  ],
                ),

                // WORK
                Column(
                  children: [
                    Text('Work', style: topicStyle),
                    Row(children: [
                      Text('Asqii Inc. ', style: titleStyle),
                      Text('Software Developer (2015 - 2017)', style: textStyle)
                    ]),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _buildPortfolioSection() {
    var _renderProject = (name, info, image) {
      return Card(
        child: Container(
          width: 500,
          padding: EdgeInsets.all(5),
          child: Row(children: [
            Image.asset(image),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      name,
                      style: titleStyle,
                    ),
                    Text(
                      info,
                    ),
                  ],
                ),
              ),
            )
          ]),
        ),
      );
    };

    return Column(
      children: [
        Text('Some stuff I\'ve worked on...', style: titleStyle),
        Container(
          padding: EdgeInsets.symmetric(vertical: 25),
          child: Column(children: [
            Container(
              constraints: BoxConstraints(maxHeight: 180),
              child: ListView(
                scrollDirection: Axis.horizontal,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  _renderProject(
                    'Apomuden',
                    'A hospital information management suite',
                    'fon.png',
                  ),
                  _renderProject(
                    'FunnyorNot',
                    'Social mobile app for sharing funny content (but currently inactive)',
                    "fon.png",
                  ),
                  _renderProject(
                    'REMSys',
                    'An Ophthalmic clinic management system',
                    'fon.png',
                  ),
                ],
              ),
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _renderProject(
                  'SchoolDesk',
                  'An offline-first school management system (database design and first iteration of project)',
                  'fon.png',
                ),
              ],
            ),
          ]),
        )
      ],
    );
  }

  Widget _buildAboutMeSection() {
    return Row(children: [
      Expanded(
          child: Column(
        children: [
          Text('About me', style: titleStyle),
          Center(
            child: Column(
              children: <Widget>[
                Text(
                  'Hi. I\'m a software engineer with a passion for clean, beautiful code. Every part of the application development stack is fair game for me.',
                  style: textStyle,
                ),
                Text(
                  'When I\'m not programming, I\'m either (attempting) playing the violin, or else gaming. Or, you know, some other thing.',
                  style: textStyle,
                ),
              ],
            ),
          ),
        ],
      ))
    ]);
  }

  Widget buildSkillsSection() {
    var _renderItem = (title, imageSrc) {
      return Column(children: <Widget>[Image.network(imageSrc), Text(title)]);
    };

    final iconSize = 80;

    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: <Widget>[
          Text(
            "Some buzzwords that also apply to me...",
            style: titleStyle,
          ),
          GridView.count(
            crossAxisCount: 4,
            children: <Widget>[
              GridTile(
                child: _renderItem(
                  'C++',
                  'https://icongr.am/devicon/cplusplus-line.svg?size=$iconSize&color=000000',
                ),
              ),
              GridTile(
                child: _renderItem(
                  "C# (WPF)",
                  'https://icongr.am/devicon/csharp-original.svg?size=$iconSize&color=000000',
                ),
              ),
              GridTile(
                child: _renderItem(
                  "JavaScript (React Native)",
                  'https://icongr.am/devicon/javascript-original.svg?size=$iconSize&color=000000',
                ),
              ),
              GridTile(
                child: _renderItem(
                  "Flutter",
                  'https://icongr.am/simple/flutter.svg?size=$iconSize&color=5FC8F8',
                ),
              ),
              GridTile(
                child: _renderItem(
                  "Database design",
                  'https://icongr.am/devicon/mysql-plain.svg?size=$iconSize&color=000000',
                ),
              ),
              GridTile(
                child: _renderItem(
                  "Python",
                  'https://icongr.am/devicon/python-original.svg?size=$iconSize&color=000000',
                ),
              ),
              GridTile(
                child: _renderItem(
                  "Android",
                  'https://icongr.am/devicon/android-original.svg?size=$iconSize&color=000000',
                ),
              ),
            ],
          ),
        ],
      ),
    );
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
              children: [
                Header(),
                _gap,
                _buildAboutMeSection(),
                _gap,
                _buildWorkEducationSection(),
                _gap,
                // buildSkillsSection(),
                _gap,
                _buildPortfolioSection(),
                _gap,
                Footer(),
              ],
            ),
          ),
        ));
  }
}
