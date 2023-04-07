import 'package:flutter/material.dart';

class OfferScreen extends StatelessWidget {
  final List<int> percentages = [10, 15, 20, 25, 30]; // list of different percentages

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[200],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Special Offers'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 200.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/carservice2.gif'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Text(
            'Current Offers',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20.0),
          Expanded(
            child: ListView.builder(
              itemCount: percentages.length, // use the length of the percentages list
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10.0),
                  child: Card(
                    child: ListTile(
                      leading: Icon(Icons.local_car_wash),
                      title: Text('${percentages[index]}% off on car wash'), // use the current percentage value
                      subtitle: Text('Valid till 30th April, 2023'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
