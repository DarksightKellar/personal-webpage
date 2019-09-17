import 'package:flutter_web/gestures.dart';
import 'package:flutter_web/material.dart';
import 'dart:html' as web;

class Footer extends StatelessWidget {
  const Footer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(color: Colors.white, fontFamily: 'FiraMono');
    var nameTextStyle = TextStyle(fontWeight: FontWeight.w900, fontFamily: 'FiraMono');
    var linkStyle = TextStyle(
        color: Colors.blue, fontFamily: 'FiraMono', decoration: TextDecoration.underline);

    var subTextSize = 10.0;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: Container(
            decoration: BoxDecoration(color: Colors.black),
            child: Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Column(
                children: <Widget>[
                  Text.rich(
                    TextSpan(children: [
                      TextSpan(text: 'Built by '),
                      TextSpan(
                          text: 'Kelvin Lartey ',
                          style: nameTextStyle.copyWith(fontSize: 20)),
                      TextSpan(text: 'with '),
                      TextSpan(
                        text: 'Flutter Web',
                        style: linkStyle,
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            web.window.open('https://flutter.dev', 'Flutter Home');
                          },
                      )
                    ]),
                    style: textStyle,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Icons made by ',
                        style: textStyle.copyWith(fontSize: subTextSize),
                      ),
                      Text.rich(
                        TextSpan(
                            text: 'Freepik',
                            style: linkStyle.copyWith(fontSize: subTextSize),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                web.window.open(
                                    'https://www.flaticon.com/authors/freepik',
                                    'freepik');
                              }),
                      ),
                      Text(
                        ' and ',
                        style: textStyle.copyWith(fontSize: subTextSize),
                      ),
                      Text.rich(
                        TextSpan(
                            text: 'Smashicons',
                            style: linkStyle.copyWith(fontSize: subTextSize),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                web.window.open(
                                    'https://www.flaticon.com/authors/smashicons',
                                    'freepik');
                              }),
                      ),
                      Text(
                        ' from ',
                        style: textStyle.copyWith(fontSize: subTextSize),
                      ),
                      Text.rich(
                        TextSpan(
                            text: 'www.flaticon.com',
                            style: linkStyle.copyWith(fontSize: subTextSize),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                web.window.open('https://www.flaticon.com/', 'freepik');
                              }),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Header photo by Leone Venter on Unsplash',
                    style: textStyle.copyWith(fontSize: subTextSize),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
