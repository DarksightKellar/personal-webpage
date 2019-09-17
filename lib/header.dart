import 'package:flutter_web/material.dart';
import 'dart:html' as web;

class Header extends StatelessWidget {
  const Header({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double profilePictureSize = 250.0;
    double mainTextSize = 22.0;
    double socialIconSize = 30.0;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(image: AssetImage('header.jpg'), fit: BoxFit.cover),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 100),
              child: Column(
                children: [
                  // Profile Picture
                  Container(
                    margin: EdgeInsetsDirectional.only(bottom: 30, top: 10),
                    width: profilePictureSize,
                    height: profilePictureSize,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('me.jpg'),
                      ),
                    ),
                  ),

                  Text(
                    'Hi there, Kelvin here',
                    style: TextStyle(
                        fontFamily: 'FiraMono',
                        fontWeight: FontWeight.normal,
                        fontSize: mainTextSize),
                    textAlign: TextAlign.center,
                  ),

                  Text(
                    '...yo that rhymed, hehe  :)',
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.normal,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[],
                  ),

                  SizedBox(
                    height: 50,
                  ),

                  // Social Icons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      // Twitter
                      FlatButton(
                        hoverColor: Colors.blueGrey,
                        onPressed: () {
                          web.window.open(
                              'https://www.twitter.com/darksightkellar', 'My Twitter');
                        },
                        child: Container(
                          width: socialIconSize,
                          height: socialIconSize,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('twitter.png'),
                            ),
                          ),
                        ),
                      ),

                      // Gmail
                      FlatButton(
                        hoverColor: Colors.red,
                        onPressed: () {
                          web.window.open('mailto:someone@yoursite.com', 'Email me');
                        },
                        child: Container(
                          width: socialIconSize,
                          height: socialIconSize,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('email.png'),
                            ),
                          ),
                        ),
                      )
                    ],
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
