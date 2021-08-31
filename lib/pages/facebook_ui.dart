import 'package:flutter/material.dart';

class FacabookUI extends StatefulWidget {
  static final String id = "facebook_ui";
  final String baseAsset = "assets/images/facebook/";

  @override
  _FacabookUIState createState() => _FacabookUIState();
}

class _FacabookUIState extends State<FacabookUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        brightness: Brightness.dark,
        backgroundColor: Colors.black.withOpacity(0.98),
        title: Text(
          "facebook",
          style: TextStyle(color: Colors.blue, fontSize: 25),
        ),
        elevation: 0,
        actions: [
          Icon(
            Icons.search,
            size: 30,
            color: Colors.grey,
          ),
          SizedBox(
            width: 8,
          ),
          Icon(
            Icons.camera_alt,
            size: 30,
            color: Colors.grey,
          ),
          SizedBox(
            width: 8,
          ),
        ],
      ),
      body: Container(
          color: Colors.black.withOpacity(0.98),
          child: ListView(children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(
                                    widget.baseAsset + "user_5.jpeg"))),
                        // child: Image.asset(widget.baseAsset+"user_5.jpeg",fit: BoxFit.cover,),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: Container(
                            height: 48,
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(color: Colors.grey)),
                            child: Center(
                              child: TextField(
                                style: TextStyle(color: Colors.white),
                                cursorColor: Colors.white,
                                decoration: InputDecoration(
                                    hintStyle: TextStyle(color: Colors.grey),
                                    hintText: "Wat's on your mind?",
                                    border: InputBorder.none),
                              ),
                            )),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 48,
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.video_call, color: Colors.red),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Live",
                                style: TextStyle(color: Colors.grey),
                              )
                            ]),
                      ),
                      Container(
                        width: 2,
                        height: 30,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.grey),
                          // borderRadius: BorderRadius.circular(23)
                        ),
                      ),
                      Expanded(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.photo, color: Colors.green),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Photo",
                                style: TextStyle(color: Colors.grey),
                              )
                            ]),
                      ),
                      Container(
                        width: 2,
                        height: 30,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.grey),
                          // borderRadius: BorderRadius.circular(23)
                        ),
                      ),
                      Expanded(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.location_on_sharp, color: Colors.red),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Chek in",
                                style: TextStyle(color: Colors.grey),
                              )
                            ]),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 10,
                  width: double.infinity,
                  color: Color.fromRGBO(50, 50, 50, 1),
                ),
                Container(
                  height: 200,
                  padding: EdgeInsets.all(8),
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    story(widget.baseAsset + "story_5.jpeg",
                        widget.baseAsset + "user_5.jpeg", "User Five"),
                    story(widget.baseAsset + "story_4.jpeg",
                        widget.baseAsset + "user_4.jpeg", "User Four"),
                    story(widget.baseAsset + "story_3.jpeg",
                        widget.baseAsset + "user_3.jpeg", "User Three"),
                    story(widget.baseAsset + "story_2.jpeg",
                        widget.baseAsset + "user_2.jpeg", "User Too"),
                    story(widget.baseAsset + "story_1.jpeg",
                        widget.baseAsset + "user_1.jpeg", "User One"),
                  ]),
                ),
                Container(
                  height: 10,
                  width: double.infinity,
                  color: Color.fromRGBO(50, 50, 50, 1),
                ),
                oneUserStory(
                  userName: 'User Two',
                  userImage: widget.baseAsset + 'user_2.jpeg',
                  feedTime: '1 hr ago',
                  feedText:
                      'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
                  feedImage: widget.baseAsset + 'story_2.jpeg',
                  feedImage1: widget.baseAsset + 'story_4.jpeg',
                ),
                oneUserStory(
                  userName: 'User Two',
                  userImage: widget.baseAsset + 'user_1.jpeg',
                  feedTime: '1 hr ago',
                  feedText:
                  'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
                  feedImage: widget.baseAsset + 'story_1.jpeg',
                  feedImage1: widget.baseAsset + 'story_5.jpeg',
                ),
              ],
            ),
          ])),
    );
  }

  Widget story(
    backImage,
    userImage,
    userName,
  ) {
    return Container(
      margin: EdgeInsets.only(
        left: 8,
      ),
      child: AspectRatio(
        aspectRatio: 1.3 / 2,
        child: Container(
          height: 200,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(backImage), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(16)),
          child: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                  Colors.black.withOpacity(0.9),
                  Colors.black.withOpacity(0.1),
                ])),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                    image: AssetImage(userImage),
                  ),
                  border: Border.all(color: Colors.blue, width: 2),
                ),
                // child: Image.asset(
                //     widget.baseAsset + "user_5.jpeg")
              ),
              Expanded(
                child: Container(),
              ),
              Text(userName, style: TextStyle(color: Colors.white)),
            ]),
          ),
        ),
      ),
    );
  }

  Widget oneUserStory(
      {userName, userImage, feedTime, feedText, feedImage, feedImage1}) {
    return Column(children: [
      Container(
        padding: EdgeInsets.all(8),
        child: Row(
          children: [
            Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                      image: AssetImage(userImage),
                      fit: BoxFit.cover,
                    ))),
            Container(
              padding: EdgeInsets.all(8),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(userName,
                        style: TextStyle(color: Colors.grey, fontSize: 16)),
                    SizedBox(
                      height: 4,
                    ),
                    Text(feedTime,
                        style: TextStyle(color: Colors.grey, fontSize: 12)),
                  ]),
            ),
            Expanded(child: Container()),
            IconButton(
              icon: Icon(
                Icons.more_horiz,
                size: 30,
                color: Colors.grey[600],
              ),
              onPressed: () {},
            )
          ],
        ),
      ),
      Container(
          padding: EdgeInsets.all(8),
          child: Text(
            feedText,
            style: TextStyle(color: Colors.grey),
          )),
      SizedBox(
        height: 12,
      ),
      Row(children: [
        Flexible(
            child: Container(
          child: Image.asset(
            feedImage,
            fit: BoxFit.cover,
          ),
        )),
        Flexible(
            child: Container(
          child: Image.asset(feedImage1, fit: BoxFit.cover),
        )),
      ]),
      Container(
          // height: 30,
          margin: EdgeInsets.all(12),
          child: Row(children: [
            roundIcon(Icons.thumb_up, Colors.blue),
            Transform.translate(
                offset: Offset(-5, 0),
                child: roundIcon(Icons.favorite, Colors.red)),
            SizedBox(
              width: 8,
            ),
            Text(
              "2.5K",
              style: TextStyle(color: Colors.grey),
            ),
            Expanded(child: Container()),
            Text(
              "4000 Comments",
              style: TextStyle(color: Colors.grey),
            ),
          ])),
      Container(
          height: 30,
          margin: EdgeInsets.all(8),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            iconText(Icons.thumb_up, Colors.blue, "Like"),
            iconText(Icons.chat, Colors.grey, "Like"),
            iconText(Icons.share, Colors.grey, "Like"),
          ]))
    ]);
  }

  Widget roundIcon(IconData icon, Color bgcolor) {
    return Container(
        height: 25,
        width: 25,
        decoration: BoxDecoration(
            color: bgcolor,
            borderRadius: BorderRadius.circular(50),
            border: Border.all(color: Colors.white, width: 2)),
        child: Icon(
          icon,
          color: Colors.white,
          size: 12,
        ));
  }

  Widget iconText(
    IconData icon,
    Color color,
    String title,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        SizedBox(
          width: 8,
        ),
        Text(
          title,
          style: TextStyle(color: color),
        ),
      ],
    );
  }
}
