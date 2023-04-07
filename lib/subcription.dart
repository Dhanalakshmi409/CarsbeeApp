import 'package:carbeapp/booknow.dart';
import 'package:carbeapp/offer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Subscriptions extends StatefulWidget {
  const Subscriptions({super.key});

  @override
  State<Subscriptions> createState() => _SubscriptionsState();
}

class _SubscriptionsState extends State<Subscriptions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[200],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Subscription",
       ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children:[
            Container(
              decoration: BoxDecoration(
                color: Colors.amber[200],
              ),
              child:
            Column(children: [
            Padding(
              padding: EdgeInsets.only(top: 20,),
              child: Container(
                height: 220,
                width: 350,
                decoration: BoxDecoration(
                  image: DecorationImage(
      image: AssetImage('assets/toyata1.jpeg',),
      fit: BoxFit.cover 
    ),
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.transparent
                ),
                child: Stack(children: [
                  Positioned(
                    top: 10,
                    left: 90,
                    child: Text("Starts at \n Rs. 1200",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  Center(
                    child: Text("1 Month silver",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  Positioned(
                    bottom: 60,left: 50,
                    child: Text("4 Exterior + 1 Interior",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),),
                  ),
                  Positioned(
                    bottom: 10,left: 90,
                    child: ElevatedButton(
                      onPressed: () {
                         Navigator.push(context, 
                        MaterialPageRoute(
                          builder: (context) =>BookingScreen() ,));
                      },
                      child: Text("Book Now",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                        ),),
                    ),
                  ),
                ],),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Container(
                height: 220,
                width: 350,
                decoration: BoxDecoration(
                   image: DecorationImage(
      image: AssetImage('assets/carbee.jpeg',),
      fit: BoxFit.cover 
    ),
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.transparent
                ),
                child: Stack(children: [
                  Positioned(
                    top: 10,
                    left: 90,
                    child: Text("Starts at \n Rs. 8400",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.red,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  Center(
                    child: Text("6 Months Platinum",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.red,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  Positioned(
                    bottom: 60,left: 40,
                    child: Text("24 Exterior + 24 Interior",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.red,
                        fontWeight: FontWeight.bold
                      ),),
                  ),
                  Positioned(
                    bottom: 10,left: 90,
                    child: ElevatedButton(
                      onPressed: () {
                         Navigator.push(context, 
                        MaterialPageRoute(
                          builder: (context) => BookingScreen(),));
                      },
                      child: Text("Book Now",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                        ),),
                    ),
                  ),
                ],),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Container(
                height: 220,
                width: 350,
                decoration: BoxDecoration(
                  image: DecorationImage(
      image: AssetImage('assets/toyata.jpeg',),
      fit: BoxFit.cover 
    ),
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.transparent
                ),
                child: Stack(children: [
                  Positioned(
                    top: 10,
                    left: 90,
                    child: Text("Starts at \n Rs. 4400",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.orange,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  Center(
                    child: Text("3 Months Platinum",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.orange,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  Positioned(
                    bottom: 60,left: 40,
                    child: Text("12 Exterior + 12 Interior",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.orange,
                        fontWeight: FontWeight.bold
                      ),),
                  ),
                  Positioned(
                    bottom: 10,left: 90,
                    child: ElevatedButton(
                      onPressed: () {
                         Navigator.push(context, 
                        MaterialPageRoute(
                          builder: (context) => BookingScreen(),)
                          );
                      },
                      child: Text("Book Now",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                        ),),
                    ),
                  ),
                ],),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Container(
                height: 220,
                width: 350,
                decoration: BoxDecoration(
                  image: DecorationImage(
      image: AssetImage('assets/init.jpeg',),
      fit: BoxFit.cover 
    ),
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.transparent
                ),
                child: Stack(children: [
                  Positioned(
                    top: 10,
                    left: 90,
                    child: Text("Starts at \n Rs. 7320",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.lime,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  Center(
                    child: Text("6 Months Gold",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.lime,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  Positioned(
                    bottom: 60,left: 40,
                    child: Text("24 Exterior + 12 Interior",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.lime,
                        fontWeight: FontWeight.bold
                      ),),
                  ),
                  Positioned(
                    bottom: 10,left: 90,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, 
                        MaterialPageRoute(
                          builder: (context) => BookingScreen(),));
                      },
                      child: Text("Book Now",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                        ),),
                    ),
                  ),
                ],),
              ),
            )
          ],),
      )]),
      ),
    );
  }
}