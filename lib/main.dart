import 'package:carbeapp/authcontrol.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:carbeapp/splashscreen.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Get.put(AuthController());
  Get.testMode = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp ({Key? key}):super(key: key);

   @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      debugShowCheckedModeBanner: false,
      
      home: SplashScreen(),
    );
   }
}


