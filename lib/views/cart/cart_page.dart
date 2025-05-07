import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:supermarket_customer_fe/core/themes/app_assets.dart';
import 'package:supermarket_customer_fe/core/themes/app_colors.dart';
import 'package:supermarket_customer_fe/core/utils/navigations.dart';
import 'package:supermarket_customer_fe/providers/cart_provider.dart';
import 'package:supermarket_customer_fe/views/cart/add_on.dart';
import 'package:supermarket_customer_fe/views/cart/address_tile.dart';
import 'package:supermarket_customer_fe/views/cart/bill_details.dart';
import 'package:supermarket_customer_fe/views/cart/cart_items.dart';
import 'package:supermarket_customer_fe/views/cart/delivery_to.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<CartProvider>(context, listen: false).resetValues();
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    return Scaffold(
      backgroundColor: AppColors.cloudGrey,
      appBar: AppBar(
        backgroundColor: const Color(0xFF27AE60),
        toolbarHeight: 70,
        title: Text("Cart", style: TextStyle(color: AppColors.white)),
        leading: InkWell(
          onTap: () => popNavigation(context),
          child: Image.asset(AppAssets.backArrow),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: height * 0.05,
              width: width,
              color: AppColors.lightGreen,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Delivery in 20 Minutes",
                    style: TextStyle(
                      color: AppColors.darkGreen,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(width: width * 0.02),
                  Image.asset(AppAssets.cartVehicle),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: AddressTile(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: CartItems(),
            ),
            AddOnContainer(),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
              child: BillDetails(),
            ),
            SizedBox(height: height * 0.02),
            DeliveryTo(),
          ],
        ),
      ),
    );
  }
}
