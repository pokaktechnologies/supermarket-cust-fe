import 'package:flutter/material.dart';
import 'package:supermarket_customer_fe/core/themes/app_colors.dart';

class HotPickItemSec extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color primaryColor;
  final Color textColor;
  final String bottomImg;
  final String primaryImg;
  const HotPickItemSec({
    super.key,
    required this.title,
    required this.subtitle,
    required this.primaryColor,
    required this.textColor,
    required this.bottomImg,
    required this.primaryImg,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 15),
          Container(
            height: 22,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [primaryColor, AppColors.white],
              ),
            ),
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  color: textColor,
                ),
              ),
            ),
          ),
          const SizedBox(height: 4),
          Center(
            child: Text(
              subtitle,
              style: const TextStyle(
                fontSize: 12,
                color: AppColors.grey,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  primaryImg,
                  height: 80,
                  fit: BoxFit.fill,
                ),
              ),
              Image.asset(bottomImg, height: 30, width: 110, fit: BoxFit.fill,),
            ],
          ),
        ],
      ),
    );
  }
}