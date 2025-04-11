import 'package:flutter/material.dart';
import 'package:supermarket_customer_fe/core/themes/app_colors.dart';

class Offerpage extends StatelessWidget {
  const Offerpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          color: Colors.blue,
          child: const Center(
            child: Text(
              "Offer page",
              style: TextStyle(
                color: AppColors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
