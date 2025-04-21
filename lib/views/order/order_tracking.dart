import 'package:flutter/material.dart';
import 'package:supermarket_customer_fe/core/themes/app_assets.dart';
import 'package:supermarket_customer_fe/core/themes/app_colors.dart';
import 'package:supermarket_customer_fe/core/utils/navigations.dart';

class OrderTracking extends StatelessWidget {
  const OrderTracking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF27AE60),
        elevation: 0,
        title: const Text(
          'Track your order',
          style: TextStyle(
            color: AppColors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        leading: InkWell(
          onTap: () => popNavigation(context),
          child: Image.asset(AppAssets.backArrow),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: Icon(Icons.help_outline, color: AppColors.white),
          ),
        ],
      ),
      body: Column(
        children: [
          // Placeholder map view
          Stack(
            children: [
              Container(
                height: 250,
                width: double.infinity,
                color: Colors.grey.shade200,
                child: Center(
                  child: Image.asset(AppAssets.mapImg, fit: BoxFit.fill),
                ),
              ),
              Positioned(
                bottom: 15,
                left: 16,
                right: 16,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: const [
                      Icon(Icons.delivery_dining, color: Colors.white),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          'Delivery in 30 minutes\nCall delivery partner',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ),
                      Icon(Icons.phone, color: Colors.white),
                    ],
                  ),
                ),
              ),
            ],
          ),

          // Order details container
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Order status',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    'order no,#12365585 | 10/02/2025 10:20am',
                    style: TextStyle(color: Colors.black54),
                  ),
                  const SizedBox(height: 20),

                  // Order Progress
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      OrderStep(
                        icon: Icons.check_circle,
                        label: 'Order Confirmed',
                      ),
                      OrderStep(
                        icon: Icons.local_shipping,
                        label: 'Out for Delivery',
                      ),
                      OrderStep(icon: Icons.home, label: 'Delivered'),
                    ],
                  ),

                  const Divider(height: 40),

                  const Text(
                    'Delivering to',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    '123 Main Street, Apt 4B, City, State, 688005',
                    style: TextStyle(color: Colors.black87),
                  ),

                  const SizedBox(height: 20),
                  const Text(
                    'Order details',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const OrderRow(title: 'Hybrid Tomato', price: '₹ 25'),
                  const OrderRow(title: 'Broccoli', price: '₹ 50'),
                  const OrderRow(title: 'Dark chocolate', price: '₹ 200'),
                  const OrderRow(title: 'Delivery fee', price: '₹ 30'),
                  const OrderRow(title: 'GST and charges', price: '₹ 10'),
                  const Divider(),
                  const OrderRow(
                    title: 'Total item #3',
                    price: '₹ 335',
                    isBold: true,
                  ),
                ],
              ),
            ),
          ),

          // Bottom buttons
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF28A745),
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      'Share Receipt',
                      style: TextStyle(color: AppColors.white),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Color(0xFF28A745)),
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      'Cancel Order',
                      style: TextStyle(color: Color(0xFF28A745)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class OrderStep extends StatelessWidget {
  final IconData icon;
  final String label;

  const OrderStep({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Color(0xFF28A745), size: 30),
        const SizedBox(height: 6),
        Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 13),
        ),
      ],
    );
  }
}

class OrderRow extends StatelessWidget {
  final String title;
  final String price;
  final bool isBold;

  const OrderRow({
    super.key,
    required this.title,
    required this.price,
    this.isBold = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 14,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          Text(
            price,
            style: TextStyle(
              fontSize: 14,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
