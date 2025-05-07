import 'package:flutter/material.dart';
import 'package:supermarket_customer_fe/core/themes/app_colors.dart';

class BillDetails extends StatelessWidget {
  const BillDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Container(
      width: width * width,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Bill Details",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: height * 0.012),
            priceDetails(height, width, "Product Cost", "₹ 275"),
            SizedBox(height: height * 0.012),
            priceDetails(height, width, "Delivery fee", "₹ 50"),
            SizedBox(height: height * 0.012),
            priceDetails(height, width, "GST and charges", "₹ 10"),
            SizedBox(height: height * 0.01),
            Divider(),
            SizedBox(height: height * 0.01),
            priceDetails(height, width, "Total", "₹ 335"),
            SizedBox(height: height * 0.01),
          ],
        ),
      ),
    );
  }
}

Widget priceDetails(height, width, key, value) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        key,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: AppColors.grey,
        ),
      ),
      Text(
        value,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: AppColors.black,
        ),
      ),
    ],
  );
}
