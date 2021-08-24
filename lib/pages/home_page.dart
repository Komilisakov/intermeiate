import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("UI"),
      ),
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'User',
            style: _CTS(color: Colors.red),
          ),
          SizedBox(
            width: 16,
          ),
          Text(
            "interface",
            style: _CTS(),
          )
        ],
      )),
    );
  }
}

TextStyle _CTS({Color? color = Colors.green, double? size = 30}) {
  return TextStyle(
    fontSize: size,
    color: color,
  );
}

TextStyle customStyle() {
  return TextStyle(fontSize: 20);
}
