import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:supermarket_customer_fe/core/themes/app_assets.dart';
import 'package:supermarket_customer_fe/core/themes/app_colors.dart';
import 'package:supermarket_customer_fe/providers/cart_provider.dart';

class CartItems extends StatelessWidget {
  const CartItems({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Container(
      width: width * width,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            singleItemTile(height, width, "one"),
            SizedBox(height: height * 0.01),
            Divider(),
            SizedBox(height: height * 0.01),
            singleItemTile(height, width, "two"),
            SizedBox(height: height * 0.01),
            Divider(),
            SizedBox(height: height * 0.01),
            singleItemTile(height, width, "three"),
            SizedBox(height: height * 0.01),
            Divider(),
            SizedBox(height: height * 0.01),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "3 Items",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: AppColors.grey,
                    ),
                  ),
                  Text(
                    "Add More",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: AppColors.green,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.01),
          ],
        ),
      ),
    );
  }
}

Widget singleItemTile(height, width, number) {
  return SizedBox(
    height: height * 0.1,
    width: width,
    child: Row(
      children: [
        Container(
          height: double.infinity,
          width: width * 0.2,
          decoration: BoxDecoration(
            color: AppColors.lightGrey,
            borderRadius: BorderRadius.circular(12),
          ),

          child: Image.asset(
            number == "one"
                ? AppAssets.cartItemOne
                : number == "two"
                ? AppAssets.cartItemTwo
                : AppAssets.cartItemThree,
          ),
        ),
        SizedBox(width: width * 0.02),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                number == "one"
                    ? "Hybrid Tomato"
                    : number == "two"
                    ? "Broccoli"
                    : "Dark Chocolate 70% Cocoa",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              ),
              Row(
                children: [
                  Text(
                    number == "one"
                        ? "500g"
                        : number == "two"
                        ? "1 Piece"
                        : "200g",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: AppColors.grey,
                    ),
                  ),
                  SizedBox(width: width * 0.02),
                  Image.asset(AppAssets.cartDownArrow),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    number == "one"
                        ? "₹25"
                        : number == "two"
                        ? "₹50"
                        : "₹200",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  Consumer<CartProvider>(
                    builder: (context, provider, child) {
                      return Row(
                        children: [
                          InkWell(
                            onTap:
                                () =>
                                    number == "one"
                                        ? provider.decreaseCountOne()
                                        : number == "two"
                                        ? provider.decreaseCountTwo()
                                        : provider.decreaseCountThree(),
                            child: Image.asset(AppAssets.cartCountDecrease),
                          ),
                          SizedBox(width: 8),
                          Text(
                            number == "one"
                                ? provider.countOne.toString()
                                : number == "two"
                                ? provider.countTwo.toString()
                                : provider.countThree.toString(),
                            style: TextStyle(color: AppColors.green),
                          ),
                          SizedBox(width: 8),
                          InkWell(
                            onTap:
                                () =>
                                    number == "one"
                                        ? provider.increseCountOne()
                                        : number == "two"
                                        ? provider.increseCountTwo()
                                        : provider.increseCountThree(),
                            child: Image.asset(AppAssets.cartCountIncrease),
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
