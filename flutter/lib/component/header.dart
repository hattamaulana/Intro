import 'package:flutter/cupertino.dart';
import 'package:intro/component/text.dart';

class Header extends StatelessWidget {

  final int cart;
  final int like;
  final String icon;
  final Function(BuildContext context) callback;

  const Header({Key key, this.icon, this.callback, this.cart = 0, this.like = 0})
    :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            child: Image.asset(icon),
            onTap: () => callback(context),
          ),
          Container(
            margin: EdgeInsets.only(right: 16),
            child: Row(
              children: [
                Image.asset(
                  'images/ic_favorite.png',
                  width: 48,
                  height: 48,
                ),
                TextComponent(
                  text: like.toString(),
                  family: TextComponent.fontBold,
                ),
                Image.asset(
                  'images/ic_cart.png',
                  width: 48,
                  height: 48,
                ),
                TextComponent(
                  text: cart.toString(),
                  family: TextComponent.fontBold,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}