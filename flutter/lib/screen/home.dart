import 'package:flutter/material.dart';
import 'package:intro/component/text.dart';
import 'package:intro/screen/collection.dart';

class HomeScreen extends StatelessWidget {
  static const NAME = '/';

  void _toCollection(BuildContext context) {
    Navigator.pushNamed(context, CollectionScreen.NAME);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: TextComponent(
                      text: 'SNOWBOARD',
                      family: TextComponent.fontBold,
                    ),
                    margin: EdgeInsets.only(top: 32),
                    padding: EdgeInsets.all(24),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 24, right: 32),
                          child: TextComponent(
                            text: 'Riders \nTalked, and we listened',
                            size: TextComponent.sizeLarge
                          )
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
                          child: TextComponent(
                            text: 'Geometric',
                            family: TextComponent.fontBold,
                            size: TextComponent.sizeMedium,
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
                              child: GestureDetector(
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
                                ),
                                onTap: () => this._toCollection(context),
                              )
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: GestureDetector(
                              child: TextComponent(
                                text: 'View Collections',
                                family: TextComponent.fontBold,
                              ),
                              onTap: () => this._toCollection(context),
                            )
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
    );
  }
}