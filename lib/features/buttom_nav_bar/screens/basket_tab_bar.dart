// ignore_for_file: body_might_complete_normally_nullable, unreachable_switch_case

import 'package:flutter/material.dart';
import 'package:fruit/features/basket/presentation/screens/basket_screen.dart';
import 'package:fruit/features/basket/presentation/screens/check_out_screen_address.dart';
import 'package:fruit/features/basket/presentation/screens/check_out_screen_payment.dart';
import 'package:fruit/features/basket/presentation/screens/check_out_screen_time.dart';

class BasketTab extends StatelessWidget {
  const BasketTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: '/',
      onGenerateRoute: (settings) {
        switch (settings.name) {

          case '/': 
            return MaterialPageRoute(
              builder: (_) => const BasketScreen(),
            );

          case '/checkout_time':
            return MaterialPageRoute(
              builder: (_) => const CheckOutScreenTime(),
            );

          case '/checkout_address':
            return MaterialPageRoute(
              builder: (_) => const CheckOutScreenAddress(),
            );

          case '/checkout_payment':
            return MaterialPageRoute(
              builder: (_) => const CheckOutScreenPayment(),
            );

          default: 
            return MaterialPageRoute(
              builder: (_) => const BasketScreen(),
            );
        }
      },
    );
  }
}
