import 'package:flutter/material.dart';
import 'package:intro/screen/collection.dart';
import 'package:intro/screen/collection_detail.dart';
import 'package:intro/screen/home.dart';

main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        HomeScreen.NAME: (context) => HomeScreen(),
        CollectionScreen.NAME: (context) => CollectionScreen(),
        CollectionDetailScreen.NAME: (context) => CollectionDetailScreen()
      },
    );
  }
}
