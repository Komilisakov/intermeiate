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
        child:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
      Text('User', style: _CTS(color: Colors.red),),
      SizedBox(width: 20,),
      Text("interface",style: _CTS(),)
    ],

        )
      ),
    );
  }
}
 _CTS({Color? color = Colors.green, int? size}){
  return TextStyle(
    fontSize: 30,color: color,
  );
}
TextStyle customStyle(){
  return TextStyle(fontSize: 20);
}