import 'package:carbeapp/homebottombar.dart';
import 'package:carbeapp/mapscreen.dart';
import 'package:carbeapp/offer.dart';
import 'package:carbeapp/subcription.dart';
import 'package:flutter/material.dart';

class ServicePage extends StatefulWidget {
  @override
  _ServicePageState createState() => _ServicePageState();
}

final List<String> imagesrc = [
  "assets/servicing_cardimage.jpg",
  "assets/service3.jpg",
  "assets/oilservice.jpg",
];
final List<String> offers = [
  " ON CAR SERVICES ",
  " ON ENGINE SERVICES ",
  " ON OIL SERVICES ",
];
final List<String> offersvalue = [
  " 40% OFF ",
  " 10% OFF ",
  " 50% OFF ",
];
final List<String> offercodes = [
  " Code: ABC123 ",
  " Code: DEF456 ",
  " Code: GHI789 ",
];
final List<String> servicesleft = [
  "assets/wheel.jpg",
  "assets/caroil.jpg",
  "assets/mirrorservice.jpg",
];

final List<String> servicesnameleft = [
  "Wheel Service",
  "Oil Service",
  "Mirror Service",
];

final List<String> servicesright = [
  "assets/engineservice.png",
  "assets/gasservice.jpg",
  "assets/brakeservice.jpg",
];

final List<String> servicesnameright = [
  "Engine Service",
  "Gas Service",
  "Brake Service",
];
int imagesrcindex = 0;

class _ServicePageState extends State<ServicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[200],
      appBar: AppBar(
        backgroundColor: Color.fromARGB(0, 221, 157, 157),
        elevation: 0,
        centerTitle: true,
        title: Text("Our Services",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 2.5,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: <Color>[
                          Color(0xFF2508FF),
                          Color(0xFFFF1000)
                        ]),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Text("how can we help you?",
                            // gradient: LinearGradient(colors: [
                            //   Color(0xFF2508FF),
                            //   Color(0xFFFF1000),
                            // ]),
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.057,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.blueGrey[100],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "Search",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 15),
                              ),
                            ],
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.057,
                            width: (MediaQuery.of(context).size.width - 80) / 5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.orange,
                            ),
                            child: Center(
                              child: InkWell(
                                onTap: () {
                     Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyLocation(),));            
                                },
                                child: Icon(
                                  Icons.search,
                                  size: 23,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.25,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: imagesrc.length,
                        itemBuilder: (context, index) {
                          return Stack(
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width - 40,
                                child: InkWell(
                                  onTap: (){
            Navigator.push(context,MaterialPageRoute(builder: (context) => OfferScreen(),));                        
                                  },
                                  child: Card(
                                    color: Colors.transparent,
                                    elevation: 0,
                                    child: Container(
                                      child: Center(
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(5.0),
                                          child: Image.asset(
                                            imagesrc[index],
                                            fit: BoxFit.fill,
                                            width: double.infinity,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white,
                                    ),
                                    child: Text(
                                      offersvalue[index],
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white,
                                    ),
                                    child: Text(
                                      offers[index],
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white,
                                    ),
                                    child: Text(
                                      offercodes[index],
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            height: 2.5,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(colors: <Color>[
                                Color(0xFFFF1000),
                                Color(0xFF2508FF)
                              ]),
                            ),
                          ),
                        ),
                        SizedBox(height: 50),
                        Text("All Services  ",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.normal),
                            textAlign: TextAlign.center),
                        Expanded(
                          child: Container(
                            height: 2.5,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(colors: <Color>[
                                Color(0xFF2508FF),
                                Color(0xFFFF1000)
                              ]),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height / 2.8,
                  child: Expanded(
                    child: ListView.builder(
                      itemCount: servicesleft.length,
                      itemBuilder: (context, index) {
                        return Row(
                          children: <Widget>[
                            Container(
                              width: (MediaQuery.of(context).size.width - 25) / 2,
                              height: 100,
                              color: Colors.transparent,
                              child: GestureDetector(
                                onTap: () {
    Navigator.push(context,MaterialPageRoute(builder: (context) => Subscriptions(),));                              
                                },
                                child: Card(
                                  elevation: 5,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      ClipOval(
                                        child: Container(
                                          child: Image.asset(
                                            servicesleft[index],
                                            fit: BoxFit.fill,
                                            width: 55,
                                            height: 55,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Flexible(
                                        child: Text(
                                          servicesnameleft[index],
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: (MediaQuery.of(context).size.width - 25) / 2,
                              height: 100,
                              color: Colors.transparent,
                              child: GestureDetector(
                                onTap: () {
  Navigator.push(context,MaterialPageRoute(builder: (context) => Subscriptions(),));                                
                                },
                                child: Card(
                                  elevation: 5,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      ClipOval(
                                        child: Container(
                                          child: Image.asset(
                                            servicesright[index],
                                            fit: BoxFit.fill,
                                            width: 55,
                                            height: 55,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Flexible(
                                        child: Text(
                                          servicesnameright[index],
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: HomeBottomBar(),
    );
  }
}
