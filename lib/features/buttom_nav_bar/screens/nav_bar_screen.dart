// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:fruit/core/themes/app_colors.dart';
import 'package:fruit/features/buttom_nav_bar/screens/basket_tab_bar.dart';
import 'package:fruit/features/favourit/presentation/screens/favourit_screen.dart';
import 'package:fruit/features/home/presentation/screens/home_screen.dart';
import 'package:fruit/features/orders/presentation/screens/orders_screens.dart';

class NavBarScreen extends StatefulWidget {
  const NavBarScreen({super.key});

  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  int currentIndex = 0;
  PageController pageController = PageController();
  List pages = [
    HomeScreen(),
    OrdersScreens(),
    BasketTab(),
    FavouritScreen(),
    HomeScreen()];

  final List<Map<String, dynamic>> navItems = [
    {"icon": "assets/icons/home.png", "label": "Home"},
    {"icon": "assets/icons/order.png", "label": "Orders"},
    {"icon": "assets/icons/basket.png", "label": "Basket"},
    {"icon": "assets/icons/favourit.png", "label": "Favorite"},
    {"icon": "assets/icons/more.png", "label": "More"},
  ];

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.sizeOf(context).height;
    double w = MediaQuery.sizeOf(context).width;

    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        height: h * .09,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          color: AppColors.buttonPrimary,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(navItems.length, (index) {
            final isActive = currentIndex == index;

            return GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = index;
                });
                pageController.jumpToPage(index);

              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                padding: EdgeInsets.symmetric(
                  horizontal: isActive ? 14 : 0,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: isActive ? Colors.white : Colors.transparent,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      navItems[index]['icon'],
                      height: h * .03,
                      color: isActive ? AppColors.buttonPrimary : Colors.white,
                    ),
                    if (isActive) ...[
                      const SizedBox(width: 6),
                      Text(
                        navItems[index]['label'],
                        style: TextStyle(
                          color: AppColors.buttonPrimary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            );
          }),
        ),
      ),

      body: PageView.builder(
        controller: pageController,
        onPageChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        itemCount: pages.length,
        itemBuilder: (context, index) {
          return pages[index];
        },
      ),
    );
  }
}
