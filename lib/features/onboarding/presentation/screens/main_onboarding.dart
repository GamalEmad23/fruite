// ignore_for_file: public_member_api_docs, sort_constructors_first, camel_case_types, prefer_const_constructors_in_immutables
// ignore_for_file: must_be_immutable, prefer_final_fields, unused_local_variable

import 'package:flutter/material.dart';
import 'package:fruit/core/widgets/custome_button.dart';
import 'package:fruit/core/widgets/custome_indecator.dart';
import 'package:fruit/core/widgets/custome_text.dart';
import 'package:fruit/features/auth/presentation/screens/general_auth_screen.dart';

import 'package:fruit/core/themes/app_colors.dart';
import 'package:fruit/features/onboarding/presentation/screens/onboarding_screen.dart';

class MainOnboarding extends StatefulWidget {
  MainOnboarding({super.key});

  @override
  State<MainOnboarding> createState() => _MainOnboardingState();
}

class _MainOnboardingState extends State<MainOnboarding> {
  List pages = [
    OnboardingScreen(
      text1: "E Shopping",
      text2: "Explore op organic fruits & grab them",
    ),
    OnboardingScreen(
      text1: "Delivery Arrived",
      text2: "Order is arrived at your Place",
    ),
    OnboardingScreen(
      text1: "Delivery Arrived",
      text2: "Order is arrived at your Place",
    ),
  ];

  PageController _pageController = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.sizeOf(context).height;
    double w = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              controller: _pageController,
              itemCount: pages.length,
              itemBuilder: (context, index) => pages[index],
            ),
          ),

          customeIndecator(h: h, pageController: _pageController, pages: pages),

          customeButton(
            h: h,
            w: w,
            onPressed: () {
              if (currentIndex == pages.length - 1) {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => GeneralAuthScreen(),));
              } else {
                _pageController.nextPage(
                  duration: Duration(milliseconds: 400),
                  curve: Curves.linear,
                );
              }
            },
            text: customeText(
              text: currentIndex == pages.length - 1 ? "Get Started" : "Next",
              fontSize: 15,
              textColor: AppColors.background,
            ),
          ),
        ],
      ),
    );
  }
}

