import 'package:carbeapp/mapscreen.dart';
import 'package:carbeapp/payment.dart';
import 'package:carbeapp/subcription.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookingScreen extends StatefulWidget {
  @override
  _BookingScreenState createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  late DateTime _selectedDate;
  late TimeOfDay _selectedTime;
  TextEditingController _locationController = TextEditingController();
  TextEditingController _carController = TextEditingController();
  TextEditingController _offerController = TextEditingController();

   @override
  void initState() {
    super.initState();
    _selectedDate = DateTime.now();
    _selectedTime = TimeOfDay.now();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[200],
      appBar: AppBar(backgroundColor: Colors.transparent,
        title: Text('Book Now',),
      ),
      body: SingleChildScrollView(child:
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Date :-',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            InkWell(
              onTap: () async {
                final pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2100),
                );
                setState(() {
                  _selectedDate = pickedDate!;
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      _selectedDate == null
                          ? 'Select Date'
                          : '${_selectedDate.day}/${_selectedDate.month}/${_selectedDate.year}',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    Icon(Icons.calendar_today),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Time :-',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            InkWell(
              onTap: () async {
                final pickedTime = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );
                setState(() {
                  _selectedTime = pickedTime!;
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      _selectedTime == null
                          ? 'Select Time'
                          : '${_selectedTime.hour}:${_selectedTime.minute}',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    Icon(Icons.access_time),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Location :-',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            TextField(
              controller: _locationController,
              decoration: InputDecoration(
                hintText: 'Enter location',
                suffixIcon: InkWell(
                  onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => MyLocation(),));
                  },
                  child: Icon(Icons.location_on,
                  color: Colors.black,),
                ),
                border: OutlineInputBorder(),
              ),
            ),
             SizedBox(height: 16.0),
            Text(
              'Car Details :-',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            TextField(
              controller: _carController,
              decoration: InputDecoration(
                hintText: 'Enter Your car Details',
                border: OutlineInputBorder(),
              ),
            ),
          SizedBox(height: 16.0),
            Text(
              'Offers :-',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            TextField(
              controller: _offerController,
              decoration: InputDecoration(
                hintText: 'Enter you subcribed',
                border: OutlineInputBorder(),
              ),
            ),
         
         
          const SizedBox(height: 30,),
            Center(
              child: ElevatedButton(onPressed: (){
       Navigator.push(context,
       MaterialPageRoute(builder: (context) => PaymentScreen()) );     
              }, child:const Text('Pay Now')),
            )
            ],
        ),
      ),
      ),
    );
  }
}


