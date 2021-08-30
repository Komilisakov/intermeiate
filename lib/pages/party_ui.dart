import 'package:flutter/material.dart';
import 'package:intermeiate/animation/FadeAnimation.dart';

class PartyUI extends StatefulWidget {
  static final String id = "party_ui";

  @override
  _PartyUIState createState() => _PartyUIState();
}

class _PartyUIState extends State<PartyUI> {
  bool _isLogin = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/im_party.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
              Colors.black.withOpacity(.6),
              Colors.black.withOpacity(.5),
              Colors.black.withOpacity(.4),
              Colors.black.withOpacity(.1),
            ]),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 70,
              ),
              FadeAnimation(
                  1,
                  Text(
                    "Find the best parties near you.",
                    style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 35,
                        fontWeight: FontWeight.normal,
                        height: 1.1),
                  )),
              SizedBox(
                height: 30,
              ),
              FadeAnimation(
                  1.2,
                  Text(
                    "Let us find you a party for your interest",
                    style: TextStyle(
                        color: Color.fromRGBO(101, 191, 142, 1),
                        fontSize: 25,
                        fontWeight: FontWeight.normal),
                  )),
              // SizedBox(
              //   height: 150,
              // ),
              Expanded(child: Container()),
              _isLogin
                  ? Container(
                      height: 55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.yellow[900]),
                      child: Center(
                          child: Text(
                        "Start",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )),
                    )
                  : Row(children: [
                      Flexible(
                        child: Container(
                          height: 55,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.red),
                          child: Center(
                              child: Text(
                            "Google",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Flexible(
                        child: Container(
                          height: 55,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.blue),
                          child: Center(
                              child: Text(
                            "Facebook",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )),
                        ),
                      ),
                    ]),

              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
