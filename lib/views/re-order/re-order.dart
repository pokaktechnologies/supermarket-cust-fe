import 'package:flutter/material.dart';
import 'package:supermarket_customer_fe/core/themes/app_colors.dart';
import 'package:supermarket_customer_fe/core/utils/navigations.dart';
import 'package:supermarket_customer_fe/views/order/cancel_order.dart';

class ReorderScreen extends StatelessWidget {
  const ReorderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cloudGrey,
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        leading: const Icon(Icons.arrow_back, color: Colors.white),
        title: const Text("Orders", style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
          Stack(
            alignment: Alignment.topRight,
            children: [
              IconButton(
                icon: const Icon(Icons.shopping_cart, color: Colors.white),
                onPressed: () {},
              ),
              const Positioned(
                right: 6,
                top: 6,
                child: CircleAvatar(
                  radius: 8,
                  backgroundColor: Colors.red,
                  child: Text(
                    "1",
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Container(
          height: 330,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppColors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    Expanded(
                      child: Text(
                        "order_no #552214566",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      "X3",
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                const Text(
                  "Delivered on 10/02/2025 , 12:30 pm",
                  style: TextStyle(color: Colors.grey),
                ),
                const Divider(height: 24),
                _itemRow("Hybrid Tomato", "₹ 25"),
                _itemRow("Broccoli", "₹ 50"),
                _itemRow("Dark chocolate", "₹ 200"),
                _itemRow("Delivery fee", "₹ 30"),
                _itemRow("GST and charges", "₹ 10"),
                const Divider(height: 24),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        pushNavigation(context, CancelOrderScreen());
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        "Reorder",
                        style: TextStyle(color: AppColors.white),
                      ),
                    ),
                    const Spacer(),
                    const Text(
                      "₹ 335",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      // Padding(
      //   padding: const EdgeInsets.all(16),
      //   child: Card(
      //     shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.circular(12),
      //     ),
      //     child: Padding(
      //       padding: const EdgeInsets.all(16),
      //       child: Column(
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: [
      //           Row(
      //             children: const [
      //               Expanded(
      //                 child: Text(
      //                   "order_no #552214566",
      //                   style: TextStyle(fontWeight: FontWeight.bold),
      //                 ),
      //               ),
      //               Text(
      //                 "X3",
      //                 style: TextStyle(
      //                   color: Colors.green,
      //                   fontWeight: FontWeight.bold,
      //                 ),
      //               ),
      //             ],
      //           ),
      //           const SizedBox(height: 4),
      //           const Text(
      //             "Delivered on 10/02/2025 , 12:30 pm",
      //             style: TextStyle(color: Colors.grey),
      //           ),
      //           const Divider(height: 24),
      //           _itemRow("Hybrid Tomato", "₹ 25"),
      //           _itemRow("Broccoli", "₹ 50"),
      //           _itemRow("Dark chocolate", "₹ 200"),
      //           _itemRow("Delivery fee", "₹ 30"),
      //           _itemRow("GST and charges", "₹ 10"),
      //           const Divider(height: 24),
      //           Row(
      //             children: [
      //               ElevatedButton(
      //                 onPressed: () {},
      //                 style: ElevatedButton.styleFrom(
      //                   backgroundColor: Colors.orange,
      //                   shape: RoundedRectangleBorder(
      //                     borderRadius: BorderRadius.circular(8),
      //                   ),
      //                 ),
      //                 child: const Text("Reorder"),
      //               ),
      //               const Spacer(),
      //               const Text(
      //                 "₹ 335",
      //                 style: TextStyle(
      //                   fontWeight: FontWeight.bold,
      //                   fontSize: 16,
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
    );
  }

  Widget _itemRow(String title, String price) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(title), Text(price)],
      ),
    );
  }
}
