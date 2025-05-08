import 'package:flutter/material.dart';
import 'package:supermarket_customer_fe/core/themes/app_assets.dart';
import 'package:supermarket_customer_fe/core/themes/app_colors.dart';
import 'package:supermarket_customer_fe/core/utils/navigations.dart';
import 'package:supermarket_customer_fe/views/order/order_tracking.dart';

class OrderStatus extends StatelessWidget {
  final bool isOrderSuccess;
  const OrderStatus({super.key, required this.isOrderSuccess});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              isOrderSuccess
                  ? AppAssets.orderSuccessImg
                  : AppAssets.orderFailImg,
            ),
          ),
          Text(
            isOrderSuccess ? "Order Successful!" : "Order Failed",
            style: TextStyle(
              color: isOrderSuccess ? AppColors.appbarColor : AppColors.red,
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),

          Text(
            isOrderSuccess
                ? "Thank you for shopping with us! You’ve"
                : "We’re sorry, but your order could not be",
            style: TextStyle(
              color: AppColors.grey,
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            isOrderSuccess ? "saved ₹ 10 on this order" : "processed",
            style: TextStyle(
              color: AppColors.grey,
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),

      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: responseButton(height, width, context, isOrderSuccess),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

Widget responseButton(height, width, BuildContext context, isOrderSuccess) {
  return InkWell(
    onTap: () {
      pushReplacementNavigation(context, OrderTracking());
    },
    child: Container(
      height: height * 0.05,
      width: width * 0.48,
      decoration: BoxDecoration(
        color:
            isOrderSuccess
                ? AppColors.mixedLightGreen
                : AppColors.customDarkRed,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Center(
        child: Text(
          "Track your order",
          style: TextStyle(
            color:
                isOrderSuccess ? AppColors.appbarColor : AppColors.amberYellow,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}
