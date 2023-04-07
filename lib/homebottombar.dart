import 'package:carbeapp/booknow.dart';
import 'package:carbeapp/info.dart';
import 'package:carbeapp/profile.dart';
import 'package:carbeapp/service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeBottomBar extends StatefulWidget {
  const HomeBottomBar({super.key});

  @override
  State<HomeBottomBar> createState() => _HomeBottomBarState();
}

class _HomeBottomBarState extends State<HomeBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
      decoration:  BoxDecoration(
        color: Colors.transparent,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
  onTap: () {
    Navigator.push(context,
    MaterialPageRoute(builder: (context) => ServicePage()));
  },
       child : Column(
            children:[
          Icon(Icons.home,
          color: Colors.black,
          size: 28,),
          Text("home",
          style:TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          ),
        ],
          ),
          ),
          InkWell(
  onTap: () {
    Navigator.push(context, MaterialPageRoute(builder: (context) => RentPage()));
  },
       child: Column(
            children: [
          Icon(Icons.search,
          color: Colors.black,
          size: 28,),
          Text("Explore",
          style:TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          ),
        ],
          ),
          ),
 InkWell(
  onTap: () {
    Navigator.push(context,
     MaterialPageRoute(builder: (context) => BookingScreen()));
  },
   child: Column(
              children: [
            Icon(CupertinoIcons.cart,
            color: Colors.black,
            size: 28,),
            Text("My Booking",
            style:TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            ),
          ],
            ),
 ),
  InkWell(
  onTap: () {
    Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
  },
       child :
 Column(
            children: [
          Icon(Icons.person,
          color: Colors.black,
          size: 28,),
          Text("Account",
          style:TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          ),
        ],
          ),
  ),
 
        ],
      ),
    );
  }
}