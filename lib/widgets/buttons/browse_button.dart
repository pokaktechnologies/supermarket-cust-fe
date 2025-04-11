import 'package:flutter/material.dart';
import 'package:supermarket_customer_fe/core/themes/app_colors.dart';

class BrowseButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const BrowseButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed();
      },
      child: Container(
        height: 28,

        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.orange.shade100,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: AppColors.amberYellow,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
