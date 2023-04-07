// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:fluttertoast/fluttertoast.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {

late Razorpay razorpay;
TextEditingController textEditingController = TextEditingController();

get totalPrice => null;

@override 
void initState(){
  super.initState();

  razorpay =  Razorpay();
  razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlerPaymentSuccess);
  razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, handlerErrorFailure);
  razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, handlerExternalWallet);
}

@override 
void dispose(){
  super.dispose();
  razorpay.clear();
}

void openCheckout(){
  var options = {
   'key': 'rzp_test_F9Jzc1xWmHg2z9',
   'amount': num.parse(textEditingController.text)*100,
   'name': 'Carsbee App',
   'description': 'Booking for looks',
   'timeout':300,
   'prefill': {'contact': '7305187080', 
       'email': 'idhana9708@gmail.com.com'},
   'external': {
   'wallets': ['paytm']
    }
  };

  try {
    razorpay.open(options);
  } catch (e) {
    print(e.toString());
  }
}

void handlerPaymentSuccess(){
  print("Payment success");
  Fluttertoast.showToast(msg: "Payment Success");
}

void handlerErrorFailure(){
  print("payment Failed");
  Fluttertoast.showToast(msg: "Payment Failed");
}

void handlerExternalWallet(){
  print("External Wallet");
  Fluttertoast.showToast(msg: "External Wallet");
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[200],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title:const Text("Payment"),
      ), 
      
      body: 
      Padding(padding: const EdgeInsets.all(30.0),
      child: Column(
        children: [
        // Text('Total Price: Rs. ${(widget.totalPrice * 1.05).toStringAsFixed(2)}',
        // style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
        // ),

        SizedBox(height: 20,),
          TextField(
            controller: textEditingController,
            decoration:const InputDecoration(
              hintText: "Enter Your Amount",
              hintStyle: TextStyle(fontSize: 25,
              fontWeight: FontWeight.bold),
              filled: true,
            ),
          ),
  
        const  SizedBox(height: 12,),
          ElevatedButton(
            onPressed: () {
            openCheckout();
          }, 
          child:const Text("Pay Now", style: TextStyle(
            color: Colors.black
          ),),),
        ],
      )
      ),
    );
  }
}
