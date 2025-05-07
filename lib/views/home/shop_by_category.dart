import 'package:flutter/material.dart';
import 'package:supermarket_customer_fe/core/themes/app_assets.dart';
import 'package:supermarket_customer_fe/core/themes/app_colors.dart';

class ShopByCategory extends StatelessWidget {
  const ShopByCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 380,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 15),
            child: Text(
              "Shop by Category",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SingleProduct(
                  text: "Groceries& Kitchen",
                  image: AppAssets.dailySaverImg,
                ),
                SingleProduct(
                  text: "Personal Care & Hygiene",
                  image: AppAssets.catImg2,
                ),
                SingleProduct(text: "Baby & Kids", image: AppAssets.catImg3),
                SingleProduct(
                  text: "Household Essentials",
                  image: AppAssets.catImg4,
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SingleProduct(text: "Pet Care", image: AppAssets.catImg5),
                SingleProduct(
                  text: "Health & Wellness",
                  image: AppAssets.catImg6,
                ),
                SingleProduct(text: "Home & Living", image: AppAssets.catImg7),
                SingleProduct(
                  text: "Electronics & Accessories",
                  image: AppAssets.catImg8,
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Row(
              children: [
                SingleProduct(text: "Seasonal & Holiday", image: AppAssets.catImg9),
                SizedBox(width: 10,),
                SingleProduct(
                  text: "Office & School",
                  image: AppAssets.catImg10,
                ),
              ],
            ),
          ),

          SizedBox(height: 20),
        ],
      ),
    );
  }
}

class SingleProduct extends StatelessWidget {
  final String text;
  final String image;
  const SingleProduct({super.key, required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      height: screenHeight * 0.16,
      width: screenWidth * 0.22,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: screenHeight * 0.01),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              text,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,

              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
            ),
          ),
          SizedBox(height: screenHeight * 0.06, child: Image.asset(image)),
          SizedBox(
            height: screenHeight * 0.025,
            child: Image.asset(AppAssets.ellipseIcon),
          ),
        ],
      ),
    );
  }
}
