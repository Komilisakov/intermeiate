import 'package:flutter/material.dart';

class HotelUI extends StatefulWidget {
  static final String id = "hotel_ui";

  @override
  _HotelUIState createState() => _HotelUIState();
}
class Hotel {
  String image = "";
  String name = "";
  Hotel({required this.image, required this.name});
}
class _HotelUIState extends State<HotelUI> {
   List<Hotel> _hotelList1 = [];
  late List<Hotel> _hotelList2;
  late List<Hotel> _hotelList3;
  late List<Hotel> _hotelList4;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _hotelList1 = [
      Hotel(image: "assets/images/hotel/11.jpg", name: "Hotel 1"),
      Hotel(image: "assets/images/hotel/12.jpg", name: "Hotel 2"),
      Hotel(image: "assets/images/hotel/13.jpeg", name: "Hotel 3"),
    ];
    _hotelList2 = [
      Hotel(image: "assets/images/hotel/21.jpg", name: "Hotel 1"),
      Hotel(image: "assets/images/hotel/22.jpg", name: "Hotel 2"),
      Hotel(image: "assets/images/hotel/23.jpg", name: "Hotel 3"),
    ];
    _hotelList3 = [
      Hotel(image: "assets/images/hotel/31.jpg", name: "Hotel 1"),
      Hotel(image: "assets/images/hotel/32.jpg", name: "Hotel 2"),
      Hotel(image: "assets/images/hotel/33.jpg", name: "Hotel 3"),
    ];
    _hotelList4 = [
      Hotel(image: "assets/images/hotel/41.jpg", name: "Hotel 1"),
      Hotel(image: "assets/images/hotel/42.jpg", name: "Hotel 2"),
      Hotel(image: "assets/images/hotel/43.jpg", name: "Hotel 3"),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        brightness: Brightness.dark,
      ),
      backgroundColor: Colors.grey[400]!,
      body: SingleChildScrollView(
          child: Column(children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/images/hotel/header.jpg'),
            fit: BoxFit.cover,
          )),
          child: Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topRight,
              colors: [
                Colors.black.withOpacity(.4),
                Colors.black.withOpacity(.4),
              ],
            )),
            child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              Center(
                child: Text(
                  'Best Hotels Ever',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25),
                height: 48,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(26)),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        size: 28,
                      ),
                      border: InputBorder.none,
                      hintText: 'Search for hotels',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),

            ]),
          ),
        ),
        Container(
            padding: EdgeInsets.all(16),
            alignment: Alignment.topLeft,
            child: Text('Business Hotels')),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: _hotelList1.map((item) => customList(item)).toList(),
              ),
            ),
            Container(
                padding: EdgeInsets.all(16),
                alignment: Alignment.topLeft,
                child: Text('Business Hotels')),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: _hotelList2.map((item) => customList(item)).toList(),
              ),
            ),
            Container(
                padding: EdgeInsets.all(16),
                alignment: Alignment.topLeft,
                child: Text('Business Hotels')),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: _hotelList3.map((item) => customList(item)).toList(),
              ),
            ),
            Container(
                padding: EdgeInsets.all(16),
                alignment: Alignment.topLeft,
                child: Text('Business Hotels')),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: _hotelList4.map((item) => customList(item)).toList(),
              ),
            ),
            // customList(Hotel(image: "assets/images/hotel/11.jpg", name: "Hotel 1")),
      ],
          ),
      ),
    );
  }

  Widget customList(Hotel hotel) {
    return Container(
      height: 170,
      width: 150,
      margin: EdgeInsets.only(left:8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image: AssetImage(hotel.image),
        fit: BoxFit.cover),
      ),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(begin: Alignment.topRight, colors: [
            Colors.black.withOpacity(0.4),
            Colors.black.withOpacity(0.4),
          ]),
        ),
child: Row(
  crossAxisAlignment: CrossAxisAlignment.end,
 children: [
   Text(hotel.name,style: TextStyle(color:Colors.white, fontSize: 20),),
   Expanded(child: Container()),
   Icon(Icons.favorite,color: Colors.red,)
 ]

),
      ),
    );
  }
}
