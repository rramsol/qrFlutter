import 'package:flutter/material.dart';
import 'package:flutterappqr/src/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'homePage',
      routes: {
        'homePage': (BuildContext context) => HomePage(),
      },
      theme: ThemeData(
        primaryColor: Colors.lightGreen
      ),
    );
  }
}
