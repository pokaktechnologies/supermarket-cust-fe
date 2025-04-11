import 'package:flutter/material.dart';
import 'package:supermarket_customer_fe/core/themes/app_colors.dart';
import 'package:supermarket_customer_fe/widgets/buttons/browse_button.dart';

class AssistantTile extends StatelessWidget {
  final String title;
  final String buttonText;
  final String assetImage;
  const AssistantTile({
    super.key,
    required this.title,
    required this.buttonText,
    required this.assetImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
            ),
            Center(
              child: Image.asset(
                assetImage,
                height: 60,
                fit: BoxFit.fill,
              ),
            ),
            BrowseButton(
              text: "Browse",
              onPressed: () => print("button pressed"),
            ),
          ],
        ),
      ),
    );
  }
}
