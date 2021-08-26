import 'package:flutter/material.dart';

class ShopUI extends StatefulWidget {
  static final String id = "shop_ui";

  @override
  _ShopUIState createState() => _ShopUIState();
}

class _ShopUIState extends State<ShopUI> {
  final List<String> _listItem = [
    "assets/images/1.png",
    "assets/images/2.jpeg",
    "assets/images/3.jpg",
    "assets/images/4.webp",
    "assets/images/5.jpg",
    "assets/images/6.jpg",
    "assets/images/7.jpeg",
    "assets/images/8.png",
  ];
  Color bgColor = Color.fromRGBO(252, 63, 25, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: bgColor,
          title: Text("Apple Products"),
          leading: Icon(Icons.menu),
          actions: [
            Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  width: 36,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(248, 152, 30, 1),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(child: Text("7")),
                ))
          ],
        ),
        body: Column(
          children: [
            Container(
                margin: EdgeInsets.all(20),
                height: 240,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/1.png"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      colors: [
                        Colors.black.withOpacity(0.5),
                        Colors.black.withOpacity(0.3),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Lifestyle sale",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      // #Button shop now
                      Container(
                        height: 50,
                        margin: EdgeInsets.all(30),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                            child: Text(
                          "Shop Now",
                          style: TextStyle(color: Colors.black),
                        )),
                      )
                    ],
                  ),
                )),
            Expanded(
                child: Container(
              padding: EdgeInsets.symmetric(horizontal: 14),
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: _listItem.map((item) => cellOfList(item)).toList(),
              ),
            ))
          ],
        ));
  }
}

Widget cellOfList(item) {
  return Card(
    color: Colors.transparent,
    elevation: 0,
    child: Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: AssetImage(item), fit: BoxFit.cover)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Icon(Icons.star_border,color: Colors.yellow,)
        ],
      ),
    ),
  );
}
