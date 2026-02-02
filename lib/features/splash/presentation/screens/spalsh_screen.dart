// ignore_for_file: use_build_context_synchronously, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:fruit/features/onboarding/presentation/screens/main_onboarding.dart';

class SpalshScreen extends StatefulWidget {
  const SpalshScreen({super.key});

  @override
  State<SpalshScreen> createState() => _SpalshScreenState();

}

class _SpalshScreenState extends State<SpalshScreen> {

@override
void initState() {
  super.initState();
      Future.delayed(Duration(seconds: 4)).then(
        (value) => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MainOnboarding(),)),
      );
    
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Image.asset("assets/images/splash.png" , fit: BoxFit.cover,)),
    );
  }
}