import 'package:flutter_web/material.dart';

class Header extends StatelessWidget {
  const Header({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                    width: 250.0,
                    height: 250.0,
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
                        fontSize: 22),
                    textAlign: TextAlign.center,
                  ),

                  Text(
                    '...yo that rhymed, hehe.  :)',
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.normal,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[],
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
