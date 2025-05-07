import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:supermarket_customer_fe/core/themes/app_colors.dart';
import 'package:supermarket_customer_fe/core/utils/navigations.dart';
import 'package:supermarket_customer_fe/providers/cart_provider.dart';
import 'package:supermarket_customer_fe/views/payment/payment_page.dart';

class DeliveryTo extends StatelessWidget {
  const DeliveryTo({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Container(
      height: height * 0.43,
      width: width * width,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        border: Border(top: BorderSide(color: AppColors.grey, width: 0.5)),
      ),

      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Deliver to",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
              ),
            ),

            SizedBox(height: height * 0.02),

            Consumer<CartProvider>(
              builder: (context, provider, child) {
                return SizedBox(
                  height: 150,
                  child: ListView.builder(
                    itemCount: provider.options.length,
                    itemBuilder: (context, index) {
                      final option = provider.options[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 8,
                        ),
                        child: Row(
                          children: [
                            Image.asset(option['icon']),
                            SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    option['text'],
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    option['address'],
                                    style: TextStyle(
                                      color: AppColors.grey,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Radio<String>(
                              value: option['value'],
                              groupValue: provider.selectedOption,
                              onChanged: (String? value) {
                                provider.updateRadioStatus(value!);
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                );
              },
            ),

            SizedBox(height: height * 0.04),

            InkWell(
              onTap: () {
                pushNavigation(context, PaymentPage());
              },
              child: Container(
                height: height * 0.07,
                width: width * 0.8,
                decoration: BoxDecoration(
                  color: AppColors.green,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text(
                    "Proceed to pay",
                    style: TextStyle(
                      color: AppColors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
