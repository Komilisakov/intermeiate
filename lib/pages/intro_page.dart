import 'package:flutter/material.dart';
import 'package:intermeiate/utils/Strings.dart';

class IntroPage extends StatefulWidget {
  static final String id = "intro_page";

  @override
  _IntroPageState createState() => _IntroPageState();
}

class PageItem {
  String image = "";
  String title = "";
  String message = "";

  PageItem({required this.image, required this.title, required this.message});
}

class _IntroPageState extends State<IntroPage> {
  PageItem pageItem = PageItem(image: "", title: "", message: "");
  late final List<PageItem> _itemsList;

  late PageController _pageController;
  late int currentIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    _pageController = PageController();
    initPage:
    0;
    super.initState();
    _itemsList = [
      PageItem(
          image: "assets/images/intro/intro1.png",
          title: Strings.stepOneTitle,
          message: Strings.stepOneMessage),
      PageItem(
          image: "assets/images/intro/intro2.png",
          title: Strings.stepTooTitle,
          message: Strings.stepTooMessage),
      PageItem(
          image: "assets/images/intro/intro3.png",
          title: Strings.stepThreeTitle,
          message: Strings.stepThreeMessage),
    ];
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // print(_item[1]["name"]);

    return Scaffold(
      backgroundColor: Colors.white,

      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            onPageChanged: (int page) {
              setState(() {
                currentIndex = page;
              });
            },
            controller: _pageController,
            children: _itemsList.map((item) => makePage(item)).toList(),
          ),
          Container(
              padding: EdgeInsets.all(20),
              child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Text(
                  "Skip",
                  style: TextStyle(color: Colors.orange, fontSize: 18),
                )
              ])),
          Container(margin: EdgeInsets.only(bottom: 30),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:_buildIndicator(),
          )
          )
        ],
      ),
    );
  }


Widget makePage(PageItem item) {
  return Container(
    padding: EdgeInsets.all(20),
    child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            item.title,
            style: TextStyle(
              color: Colors.orange,
              fontSize: 25,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          Center(
              child: Text(
            item.message,
            style: TextStyle(color: Colors.grey, fontSize: 15),
          )),
          SizedBox(
            height: 20,
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Image.asset(item.image))
        ]),
  );
}

Widget _indicator(bool isActive) {
  return AnimatedContainer(
    duration: Duration(milliseconds: 300),
    height: 6,
    width: isActive ? 30 : 6,
    margin: EdgeInsets.only(right: 5),
    decoration: BoxDecoration(
        color: Colors.orange, borderRadius: BorderRadius.circular(5)),
  );
}

List<Widget> _buildIndicator() {
  List<Widget> indicators = [];
  for (int i=0; i<3; i++){
if (currentIndex == i){
  indicators.add(_indicator(true));
} else {
  indicators.add(_indicator(false));
}
  }
  return indicators;
}
}