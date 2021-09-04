import 'package:flutter/material.dart';
import 'package:intermeiate/models/my_flutter_app_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intermeiate/pages/feed_page.dart';
// import 'package:flutter_icons/flutter_icons.dart';
class InstagramUI extends StatefulWidget {
  const InstagramUI({Key? key}) : super(key: key);

  @override
  _InstagramUIState createState() => _InstagramUIState();
}

class _InstagramUIState extends State<InstagramUI> {
  TextStyle myTextStyle = TextStyle(color: Colors.grey);
  var _pages = [
    FeedPage(),
    FeedPage(),
    FeedPage(),
    FeedPage(),
    FeedPage(),
  ];

  int currentPage = 0;

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black.withOpacity(0.94),
          elevation: 0,
          title: Text("Instagram", style: TextStyle(color: Colors.grey)),
          leading: IconButton(
            icon: Icon(
              Icons.camera_alt_outlined,
              color: Colors.grey,
            ),
            onPressed: () {},
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.tv_sharp,
                  color: Colors.grey,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  MyFlutterApp.message_send_svgrepo_com,
                  color: Colors.grey,
                )),
          ],
        ),
        body: Container(
            child: _pages[currentPage]),
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Colors.black.withOpacity(0.95),
        currentIndex: currentPage,
        onTap: (i){
          setState(() {
            currentPage = i;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.home),
              title: Text("Feed")
          ),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.search),
              title: Text("Search")
          ),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.plusSquare),
              title: Text("Upload")
          ),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.heart),
              title: Text("Likes")
          ),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.user),
              title: Text("Account")
          ),
        ],
      ),

    );
        // Container(
        //     color: Colors.black.withOpacity(0.94),
        //     child: ListView(
        //       children: [
        //         Column(
        //           children: [
        //             Container(
        //               margin: EdgeInsets.all(8),
        //               child: Row(
        //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                 children: [
        //                   Text(
        //                     "Stories",
        //                     style: myTextStyle,
        //                   ),
        //                   Text(
        //                     "Watch all",
        //                     style: myTextStyle,
        //                   ),
        //                 ],
        //               ),
        //             ),
        //             //#Stories
        //             Container(
        //               height: 100,
        //               child:
        //                   ListView(scrollDirection: Axis.horizontal, children: [
        //                 Story(
        //                     "assets/images/instagram/user_2.jpeg", "Sylvestor"),
        //                 Story("assets/images/instagram/user_3.jpeg", "Lavina"),
        //                 Story("assets/images/instagram/user_1.jpeg", "Jazmin"),
        //                 Story("assets/images/instagram/user_1.jpeg", "Jazmin"),
        //                 Story(
        //                     "assets/images/instagram/user_2.jpeg", "Sylvestor"),
        //                 Story("assets/images/instagram/user_3.jpeg", "Lavina"),
        //                 Story("assets/images/instagram/user_1.jpeg", "Jazmin"),
        //                 Story("assets/images/instagram/user_1.jpeg", "Jazmin"),
        //               ]),
        //             ),
        //           ],
        //         ),
        //         Container(
        //             child: Column(
        //           children: [
        //             Container(
        //               margin: EdgeInsets.all(16),
        //               child: Row(
        //                 children: [
        //                   Container(
        //                     height: 40,
        //                     width: 40,
        //                     margin: EdgeInsets.only(right:8),
        //                     decoration: BoxDecoration(
        //                         borderRadius: BorderRadius.circular(50),
        //                         image: DecorationImage(
        //                             image: AssetImage(
        //                                 "assets/images/instagram/user_3.jpeg"))),
        //                   ),
        //                   Text("Brianne",style:TextStyle(color:Colors.grey)),
        //                Expanded(child: Container()),
        //                   Icon(Icons.more_horiz,color:Colors.grey,size: 30,),
        //
        //                 ],
        //               ),
        //             ),
        //             Container(
        //               height: 230,
        //               width: double.infinity,
        //               child: Image.asset("assets/images/instagram/feed_1.jpeg",
        //               fit: BoxFit.cover,),
        //             ),
        //             Container(
        //               height: 38,
        //               child:Row(
        //                 children: [
        //                   IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border,color: Colors.grey,),),
        //                   IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.comment,color: Colors.grey,),),
        //                   IconButton(onPressed: (){}, icon: Icon(MyFlutterApp.message_send_svgrepo_com,color: Colors.grey,),),
        //                   Expanded(child: Container()),
        //                   IconButton(onPressed: (){}, icon: Icon(Icons.bookmark_border,color: Colors.grey,),),
        //                 ],
        //               )
        //             ),
        //             Text("Liked By ", style:TextStyle(color: Colors.grey))
        //           ],
        //         ))
        //       ],
        //     )));
  }

  Widget Story(image, name) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          margin: EdgeInsets.only(left: 16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: Colors.purple, width: 2),
              image: DecorationImage(image: AssetImage(image))),
        ),
        Container(
            margin: EdgeInsets.all(8),
            child: Text(
              name,
              style: myTextStyle,
            ))
      ],
    );
  }
}
