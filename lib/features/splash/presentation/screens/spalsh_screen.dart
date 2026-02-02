// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:fruit/features/onboarding/presentation/screens/onboarding_screen.dart';

class SpalshScreen extends StatefulWidget {
  const SpalshScreen({super.key});

  @override
  State<SpalshScreen> createState() => _SpalshScreenState();

}

class _SpalshScreenState extends State<SpalshScreen> {

@override
void initState() {
  super.initState();
      Future.delayed(Duration(seconds: 3)).then(
        (value) => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OnboardingScreen(),)),
      );
    
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset("assets/images/splash.png"),
    );
  }
}