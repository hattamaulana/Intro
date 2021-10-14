import 'package:flutter/material.dart';
import 'package:intro/component/header.dart';
import 'package:intro/component/text.dart';
import 'package:intro/models.dart';


class CollectionDetailScreen extends StatefulWidget {

  static final String NAME = "/collection_detail";

  @override
  State<StatefulWidget> createState() {
    return _CollectionDetailScreen();
  }
}

class _CollectionDetailScreen extends State<CollectionDetailScreen> {

  int _cart = 0;
  int _like = 0;
  bool _areLike = false;

  void addToCart () {
    setState(() {
      _cart += 1;
    });
  }

  void like () {
    setState(() {
      _areLike = !_areLike;

      if (_areLike) {
        _like += 1;
      } else {
        if (_like > 0) {
          _like -= 1;
        }
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context).settings.arguments as CollectionModel;

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Header(
              icon: 'images/ic_arrow_left.png',
              callback: (context) => Navigator.pop(context),
              cart: _cart,
              like: _like,
            ),
            TextComponent(
              text: 'SNOWBOARD COLLECTION',
              padding: EdgeInsets.only(top: 32),
            ),
            TextComponent(
              text: args.text,
              family: TextComponent.fontBold,
              size: TextComponent.sizeLarge,
              padding: EdgeInsets.only(top: 16),
            ),
            Expanded(child: Padding(
              padding: EdgeInsets.all(4),
              child: Image.asset(
                args.image,
              ),
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                    child: Container(
                      margin: EdgeInsets.only(right: 16),
                      padding: EdgeInsets.all(8),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(191, 192, 202, .15),
                              // color: Colors.grey,
                              offset: Offset.fromDirection(2, 10),
                              blurRadius: 10,
                            )
                          ]
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Image.asset('images/ic_favorite.png'),
                      ),
                    ),
                  onTap: () => like(),
                ),
                Expanded(child: GestureDetector(
                  child: Container(
                    padding: EdgeInsets.only(top: 8, bottom: 8),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: Colors.black,
                        boxShadow: [
                          BoxShadow(
                            // color: Color.fromRGBO(191, 192, 202, .15),
                            color: Colors.grey,
                            offset: Offset.fromDirection(2, 5),
                            blurRadius: 20,
                          )
                        ]
                    ),
                    child: TextComponent(
                      text: 'Add to Cart',
                      color: Colors.white,
                      family: TextComponent.fontBold,
                      size: TextComponent.sizeMedium,
                      padding: EdgeInsets.all(8),
                    ),
                  ),
                  onTap: () => addToCart(),
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}