import 'package:flutter/material.dart';
import 'package:supermarket_customer_fe/core/themes/app_assets.dart';
import 'package:supermarket_customer_fe/core/themes/app_colors.dart';

class FlashsaleScreen extends StatelessWidget {
  const FlashsaleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      color: AppColors.lightGreenContainer,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 12,
          right: 12,
          top: 8.0,
          bottom: 8.0,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Flash Sale",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
                Text(
                  "See all",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: AppColors.green,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),

            SizedBox(
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SingleProduct(),
                  SizedBox(width: 10),
                  SingleProduct(),
                  SizedBox(width: 10),
                  SingleProduct(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SingleProduct extends StatelessWidget {
  const SingleProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🔷 Top section with grey background
            Container(
              decoration: const BoxDecoration(color: Color(0xFFEAEAEA)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Center(
                        child: Image.asset(
                          AppAssets.percentageIg,
                          height: 30,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.green, width: 1.5),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Center(
                          child: Icon(Icons.add, size: 16, color: Colors.green),
                        ),
                      ),
                    ],
                  ),
                  Center(
                    child: Image.asset(
                      AppAssets.recoImge,
                      height: 70,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "new image",
                    style: const TextStyle(fontWeight: FontWeight.w600),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    children: [
                      Text(
                        "200",
                        style: const TextStyle(
                          fontSize: 12,
                          decoration: TextDecoration.lineThrough,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(width: 6),
                      Text(
                        "150",
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "10",
                    style: const TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
