import 'package:flutter/material.dart';
import 'package:supermarket_customer_fe/core/themes/app_assets.dart';
import 'package:supermarket_customer_fe/core/themes/app_colors.dart';

class TopBrands extends StatelessWidget {
  const TopBrands({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: double.infinity,
      color: AppColors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 20),
            child: Text(
              "Top Brands",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SingleBrand(img: AppAssets.brandImg1),
                SingleBrand(img: AppAssets.brandImg2),
                SingleBrand(img: AppAssets.brandImg3),
                SingleBrand(img: AppAssets.brandImg4),
              ],
            ),
          ),
          SizedBox(height: screenHeight * 0.02,)
        ],
      ),
    );
  }
}

class SingleBrand extends StatelessWidget {
  final String img;
  const SingleBrand({super.key, required this.img});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight * 0.08,
      width: screenWidth * 0.21,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.appbarColor),
        borderRadius: BorderRadius.circular(12),
      ),

      child: Center(child: Image.asset(img)),
    );
  }
}
