import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:supermarket_customer_fe/core/themes/app_assets.dart';
import 'package:supermarket_customer_fe/core/themes/app_colors.dart';
import 'package:supermarket_customer_fe/core/utils/navigations.dart';
import 'package:supermarket_customer_fe/providers/payment_provider.dart';
import 'package:supermarket_customer_fe/views/payment/add_upi_payment.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

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
        title: Text("Payment", style: TextStyle(color: AppColors.white)),
        leading: InkWell(
          onTap: () => popNavigation(context),
          child: Image.asset(AppAssets.backArrow),
        ),
      ),

      body: Column(
        children: [
          Container(
            height: height * 0.06,
            width: width,
            decoration: BoxDecoration(
              color: AppColors.mintGreen25,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Total Amount",
                        style: TextStyle(
                          color: AppColors.appbarColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(width: width * 0.02),
                      Image.asset(AppAssets.cartDownArrow),
                    ],
                  ),

                  Text(
                    "₹ 335",
                    style: TextStyle(
                      color: AppColors.appbarColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: height * 0.02),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: paymentBlock(
              height,
              width,
              AppAssets.codImg,
              "Credit / Debit / ATM Card",
            ),
          ),
          SizedBox(height: height * 0.01),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: paymentBlock(
              height,
              width,
              AppAssets.netBankingImg,
              "Net Banking",
            ),
          ),
          SizedBox(height: height * 0.01),
          Consumer<PaymentProvider>(
            builder: (context, provider, child) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: width * width,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),

                  child: Column(
                    children: [
                      SizedBox(height: height * 0.015),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 15,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  height: height * 0.03,
                                  width: width * 0.06,
                                  child: Image.asset(AppAssets.upiPaymentImg),
                                ),
                                SizedBox(width: width * 0.02),
                                Text(
                                  "UPI Payment",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),

                            InkWell(
                              onTap: () {
                                provider.changeUpiExpand();
                              },
                              child: SizedBox(
                                height: height * 0.03,
                                width: width * 0.06,
                                child: Image.asset(
                                  provider.isUpiExpanded
                                      ? AppAssets.upArrowBlack
                                      : AppAssets.downArrowBlack,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: height * 0.015),

                      if (provider.isUpiExpanded)
                        SizedBox(
                          child: Column(
                            children: [
                              SizedBox(height: height * 0.02),
                              Theme(
                                data: Theme.of(context).copyWith(
                                  unselectedWidgetColor: AppColors.grey,
                                ),
                                child: ListTile(
                                  title: Text(
                                    'name@upi',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  trailing: Transform.scale(
                                    scale: 1.2,
                                    child: Radio<int>(
                                      value: 1,
                                      groupValue: provider.selectedOption,
                                      activeColor: AppColors.green,
                                      onChanged: (value) {
                                        if (value != null) {
                                          provider.changeSelectedOption(value);
                                        }
                                      },
                                    ),
                                  ),
                                  onTap: () {
                                    provider.changeSelectedOption(1);
                                  },
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                child: InkWell(
                                  onTap: () {
                                    pushNavigation(context, AddUpiScreen());
                                  },
                                  child: Container(
                                    height: height * 0.06,
                                    width: width * width,
                                    decoration: BoxDecoration(
                                      color: AppColors.greenbuttonColor,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Add UPI",
                                        style: TextStyle(
                                          color: AppColors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: height * 0.02),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
              );
            },
          ),

          SizedBox(height: height * 0.01),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: paymentBlock(
              height,
              width,
              AppAssets.codImg,
              "Cash On Delivery",
            ),
          ),

          SizedBox(height: height * 0.1),
        ],
      ),

      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: InkWell(
          onTap: () {
            print("jhaidifd");
          },
          child: Container(
            height: height * 0.06,
            width: width * width,
            decoration: BoxDecoration(
              color: AppColors.amberYellow,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                "Confirm",
                style: TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

Widget paymentBlock(height, width, img, text) {
  return Container(
    height: height * 0.1,
    width: width * width,
    decoration: BoxDecoration(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(15),
    ),

    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                height: height * 0.03,
                width: width * 0.06,
                child: Image.asset(img),
              ),
              SizedBox(width: width * 0.02),
              Text(
                text,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              ),
            ],
          ),

          if (text != "Cash On Delivery")
            SizedBox(
              height: height * 0.03,
              width: width * 0.06,
              child: Image.asset(AppAssets.downArrowBlack),
            ),
        ],
      ),
    ),
  );
}
