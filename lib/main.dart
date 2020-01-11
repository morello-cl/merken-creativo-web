import 'package:flutter/material.dart';

import 'package:mc_web/pages/default_page.dart';

 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Merkén Creativo',
      initialRoute: '/',
      routes: {
        '/' : (BuildContext context) => DefaultPage(),
      },
      theme: ThemeData(
        fontFamily: 'Lato',
        cardTheme: CardTheme(
          color: Color.fromRGBO(0x2C, 0x2E, 0x35, 1.0),
        ),
      ),
    );
  }
}