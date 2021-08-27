import 'package:flutter/material.dart';
import 'package:intermeiate/pages/home_page.dart';
import 'package:intermeiate/pages/intro_page.dart';
import 'package:intermeiate/pages/login_page.dart';
import 'package:intermeiate/pages/shop_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: IntroPage(),
      routes: {
        HomePage.id: (context) => HomePage(),
        LoginPage.id: (context) => LoginPage(),
        ShopUI.id: (context) => ShopUI(),
        IntroPage.id: (context) => IntroPage(),
      },
      );
  }
}
