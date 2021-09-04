import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intermeiate/pages/amazon_ui.dart';
import 'package:intermeiate/pages/facebook_ui.dart';
import 'package:intermeiate/pages/home_page.dart';
import 'package:intermeiate/pages/hotel_ui.dart';
import 'package:intermeiate/pages/instagram_ui.dart';
import 'package:intermeiate/pages/intro_page.dart';
import 'package:intermeiate/pages/login_page.dart';
import 'package:intermeiate/pages/market_ui.dart';
import 'package:intermeiate/pages/party_ui.dart';
import 'package:intermeiate/pages/shop_ui.dart';

void main() {
  // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  //     statusBarColor: Colors.white
  // ));
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
        primarySwatch: Colors.red,
        // brightness: Brightness.dark,
      ),
      home: InstagramUI(),
      routes: {
        HomePage.id: (context) => HomePage(),
        LoginPage.id: (context) => LoginPage(),
        ShopUI.id: (context) => ShopUI(),
        IntroPage.id: (context) => IntroPage(),
        MarketUI.id: (context) => MarketUI(),
        HotelUI.id: (context) => HotelUI(),
        PartyUI.id: (context) => PartyUI(),
        AmazonUIPage.id: (context) => AmazonUIPage(),
        FacabookUI.id: (context) => FacabookUI(),
      },
    );
  }
}
