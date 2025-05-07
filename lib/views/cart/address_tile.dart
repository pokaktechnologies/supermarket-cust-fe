import 'package:flutter/material.dart';
import 'package:supermarket_customer_fe/core/themes/app_assets.dart';
import 'package:supermarket_customer_fe/core/themes/app_colors.dart';

class AddressTile extends StatelessWidget {
  const AddressTile({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Container(
      height: height * 0.1,
      width: width * width,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
      ),

      child: Padding(
        padding: const EdgeInsets.only(top: 15, left: 10, right: 15, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(AppAssets.cartLocation),
                SizedBox(width: width * 0.03),
                Text(
                  "House Number 123 \nabc street, abcd",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ],
            ),

            Column(
              children: [
                Image.asset(AppAssets.cartDownArrow),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
