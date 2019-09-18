import 'package:flutter/material.dart';
import 'package:universal_html/html.dart' as web;

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

            // Content
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
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
                    'Hey there, Kelvin here',
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

                  SizedBox(
                    height: 30,
                  ),

                  // Social Icons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      // Twitter
                      Tooltip(
                        message: 'Follow me @darksightkellar',
                        child: FlatButton(
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
                      ),

                      // Gmail
                      Tooltip(
                        message: 'Contact me',
                        child: FlatButton(
                          hoverColor: Colors.red,
                          onPressed: () {
                            web.window.open('mailto:kelvin@geocemslab.com', 'Email me');
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
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
