import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intro/component/card.dart';
import 'package:intro/component/header.dart';
import 'package:intro/component/text.dart';
import 'package:intro/models.dart';
import 'package:intro/screen/collection_detail.dart';

class CollectionScreen extends StatelessWidget {
  static const NAME = '/collections';

  final List<CollectionModel> data = [
    CollectionModel(image: 'images/image_board_1.png', text: 'Long Winter 23'),
    CollectionModel(image: 'images/image_board_2.png', text: 'Red Special One')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Header(
              icon: 'images/ic_hamburger.png',
              callback: (context) => () => {},
            ),
            Container(
              margin: EdgeInsets.only(top: 32),
              child: TextComponent(
                  text: 'Full color life  only on',
                  size: TextComponent.sizeLarge
              ),
            ),
            TextComponent(
                text: 'the slope.',
                family: TextComponent.fontBold,
                size: TextComponent.sizeLarge
            ),
            Container(
              height: (256.0+50),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                itemBuilder: (context, item) => CardComponent(
                  margin: EdgeInsets.only(top: 32, right: 16),
                  height: 192,
                  width: 192.0+50,
                  widget: Padding(
                    padding: EdgeInsets.all(24),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(4),
                          child: Image.asset(
                            data[item].image,
                            height: 192,
                          ),
                        ),
                        TextComponent(
                          text: data[item].text,
                          family: TextComponent.fontBold,
                        )
                      ],
                    ),
                  ),
                  onTap: (context) => {
                    Navigator.pushNamed(context, CollectionDetailScreen.NAME,
                        arguments: data[item]
                    )
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}