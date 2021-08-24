import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static final String id = "login_page";

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.topCenter,
              fit: BoxFit.fitWidth,
              image: AssetImage('assets/images/bg.png'),
            ),
          ),
          child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(height: 40),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                "Добро пожаловать в  Hamkormobile",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 30),
            Expanded(
              child: Container(
                  width: double.infinity,
                  height: 200,
                  //double.infinity,
                  // padding: EdgeInsets.all(50),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          topLeft: Radius.circular(30)),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(171, 171, 171, 0.7),
                          blurRadius: 20,
                          offset: Offset(0, 10),
                        )
                      ]),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 40,
                          ),
                          //#email , #password
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromRGBO(171, 171, 171, 0.7),
                                    blurRadius: 20,
                                    offset: Offset(0, 10),
                                  )
                                ]),
                            child: Column(children: [
                              Container(
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey[200]!))),
                                padding: EdgeInsets.all(10),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Email",
                                      hintStyle: TextStyle(
                                        color: Colors.grey,
                                      ),
                                      border: InputBorder.none),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey[200]!))),
                                padding: EdgeInsets.all(10),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Password",
                                      hintStyle: TextStyle(
                                        color: Colors.grey,
                                      ),
                                      border: InputBorder.none),
                                ),
                              )
                            ]),
                            // child:TextField(
                            //
                            // )
                          ),
                          SizedBox(height: 40,),
                          //# Login button
                          Container(
                              margin: EdgeInsets.symmetric(horizontal: 50),
                              height: 48,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.green[800],

                              ),
                              child: Center(
                                child: Text("Войти", style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),),
                              )
                          ),
                          SizedBox(height: 30,),
                          Text("Войти через соцсети", style: TextStyle(
                              color: Colors.black.withOpacity(0.5)),),
                          SizedBox(height: 40,),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  _button(title:"Facebook",color: Colors.blue),
                                  _button(title:"Google",color: Colors.red),
                                  _button(title:"Apple",color: Colors.black),
                                ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )),
            )
            // #login,  #welcome
          ])),
    );
  }
}

Widget _button({title, color}) {
  return Container(

        // margin: EdgeInsets.symmetric(horizontal: 50),
        height: 48,
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: color,

        ),
        child: Center(
          child: Text(title, style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold),),
        )

  );
}