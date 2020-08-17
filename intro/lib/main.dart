import 'package:flutter/material.dart';

main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Skate App',
      home: Scaffold(
        body: Row(
          children: <Widget>[
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(24),
                  child: Text(
                    'SNOWBOARD',
                    style: TextStyle(fontFamily: 'raleway bold'),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 24, right: 32),
                        child: Text(
                          'Riders \nTalked, and we listened',
                          style: TextStyle(
                              fontFamily: 'gilroy light', fontSize: 36),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 24, bottom: 8, top: 8),
                        child: ClipOval(
                          child: Container(
                            width: 20,
                            height: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 24, right: 32),
                        child: Text(
                          'Geometric',
                          style: TextStyle(
                              fontFamily: 'gilroy extrabold', fontSize: 28),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.all(24),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        ClipOval(
                            child: Container(
                          width: 50,
                          height: 50,
                          color: Colors.black,
                          child: Center(
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            ),
                          ),
                        )),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text(
                            'View Collections',
                            style: TextStyle(
                                fontFamily: 'gilroy extrabold',
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ],
                    )),
              ],
            )),
            Image.asset(
              'images/skate.png',
              width: 75,
            ),
          ],
        ),
      ),
    );
  }
}
