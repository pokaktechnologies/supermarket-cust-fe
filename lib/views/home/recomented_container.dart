import 'package:flutter/material.dart';
import 'package:supermarket_customer_fe/core/themes/app_assets.dart';
import 'package:supermarket_customer_fe/core/themes/app_colors.dart';

class RecomentedContainer extends StatelessWidget {
  const RecomentedContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      width: double.infinity,
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
                  "Recommented For You",
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
              height: 170,
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
    return Container(
      height: 155,
      width: 120,
      decoration: BoxDecoration(
        color: AppColors.cloudGrey,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: AppColors.grey,
          width: 0.5, // 👈 decrease this value to make the border thinner
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1), // shadow color
            spreadRadius: 2, // how much the shadow spreads
            blurRadius: 1, // how blurry the shadow is
            offset: Offset(0, 3), // position of the shadow (x, y)
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 75,
            width: 120,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(AppAssets.recoImge),
                Positioned(
                  right: 80,
                  top: 0,
                  bottom: 0,

                  child: Image.asset(
                    AppAssets.percentageIg,
                    width: 30,
                    height: 35,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 75,
            width: 120,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
