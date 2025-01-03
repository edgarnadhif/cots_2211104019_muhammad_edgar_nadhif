import 'package:cots_2211104019_muhammad_edgar_nadhif/modules/onboarding/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Onboarding App',
      theme: ThemeData(primarySwatch: Colors.green),
      home: OnboardingPage(),
    );
  }
}
