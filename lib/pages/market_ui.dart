import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MarketUI extends StatefulWidget {
  static final String id = "market_ui";

  @override
  _MarketUIState createState() => _MarketUIState();
}

class MyCategory {
  String name = "123123";
  bool selected = false;

  MyCategory({required this.name, required this.selected});
}

class _MarketUIState extends State<MarketUI> {
  late final List<MyCategory> categories;
  final List<String> carImages = [
    "assets/images/cars/1.jpg",
    "assets/images/cars/2.jpg",
    "assets/images/cars/3.jpg",
    "assets/images/cars/4.jpg",
    "assets/images/cars/5.webp",
    "assets/images/cars/6.jpg",
    "assets/images/cars/7.jpeg",
    "assets/images/cars/8.webp",
    "assets/images/cars/9.jpeg",
    "assets/images/cars/10.jpg",
    "assets/images/cars/11.jpg",
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    categories = [
      MyCategory(name: "All", selected: true),
      MyCategory(name: "Red", selected: false),
      MyCategory(name: "Blue", selected: false),
      MyCategory(name: "Green", selected: false),
      MyCategory(name: "Yellow", selected: false),
      MyCategory(name: "Orange", selected: false),
      MyCategory(name: "White", selected: false),
      MyCategory(name: "Purple", selected: false),
    ];
    print(categories[1].selected);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Text(
            "Cars",
            style: TextStyle(color: Colors.red),
          ),
          actions: [
            Icon(
              Icons.notifications,
              color: Colors.red,
            ),
            SizedBox(
              width: 16,
            ),
            Icon(
              Icons.shopping_cart,
              color: Colors.red,
            ),
            SizedBox(
              width: 16,
            ),
          ],
          brightness: Brightness.light,
        ),
        body: SingleChildScrollView(
            child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: categories.map((item) => singleTab(item)).toList(),
                ),
              ),
              // SizedBox(height: 16,),
              Column(
                children: carImages.map((item) => cardCar(item)).toList(),
              ),

              // cardCar(item),
            ],
          ),
        )));
  }

  Widget singleTab(MyCategory item) {
    // return AspectRatio(aspectRatio: 2.2 / 1, child: Container(
    //   margin: EdgeInsets.only(right: 10),
    //   decoration: BoxDecoration(
    //     color: type? Colors.red : Colors.white,
    //     borderRadius: BorderRadius.circular(20),
    //   ),
    //   child: Center(
    //     child: Text(title,style: TextStyle(
    //       color: type? Colors.white : Colors.black,
    //       fontSize: type? 20:17
    //     ),),
    //   )
    // ));

    Color textColor = Colors.black;
    double fontSize = 17;
    BoxDecoration myDecor = BoxDecoration();
    if (item.selected) {
      fontSize = 20;
      textColor = Colors.white;
      myDecor = BoxDecoration(
          color: Colors.red, borderRadius: BorderRadius.circular(24));
    }
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: 4),
      padding: EdgeInsets.symmetric(horizontal: 16),
      alignment: Alignment.center,
      decoration: myDecor,
      child: Text(
        item.name,
        style: TextStyle(
          fontSize: fontSize,
          color: textColor,
        ),
      ),
    );
  }

  Widget cardCar(image) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
          boxShadow: [
            BoxShadow(
                color: Colors.grey[400]!,
                blurRadius: 10,
                offset: Offset(
                  10,
                  10,
                )),
          ]),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(begin: Alignment.topRight, colors: [
            Colors.black.withOpacity(1),
            Colors.black.withOpacity(0.3),
          ]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
                text: TextSpan(
                    text: 'PDP Car',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    children: [
                  TextSpan(
                      text: '  Electric',
                      style: TextStyle(fontSize: 18, color: Colors.red))
                ])),
            SizedBox(
              height: 16,
            ),
            Text(
              "100\$",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Expanded(child: Container()),
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.red,
              ),
              child: Center(
                  child: Icon(
                Icons.favorite_border,
                color: Colors.white,
                size: 20,
              )),
            )
          ],
        ),
      ),
    );
  }
}
