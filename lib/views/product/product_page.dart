import 'package:flutter/material.dart';
import 'package:supermarket_customer_fe/core/themes/app_assets.dart';
import 'package:supermarket_customer_fe/core/themes/app_colors.dart';
import 'package:supermarket_customer_fe/core/utils/navigations.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF27AE60),
        toolbarHeight: 70,
        leading: InkWell(
          onTap: () => popNavigation(context),
          child: Image.asset(AppAssets.backArrow),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Icon(Icons.search, color: Colors.white),
            const SizedBox(width: 10),
            Stack(
              children: [
                const Icon(Icons.shopping_cart, color: Colors.white),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: const Text(
                      '1',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            color: AppColors.mixedLightGreen,
            child: Image.asset(
              AppAssets.singleImg,
              height: 200,
              fit: BoxFit.contain,
            ),
          ),
          Card(
            color: AppColors.white,
            margin: const EdgeInsets.all(10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Hybrid Tomato',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text('500g', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: const [
                      Text(
                        '₹ 25',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 8),
                      Text('10% OFF', style: TextStyle(color: Colors.green)),
                      SizedBox(width: 8),
                      Text(
                        '₹ 35',
                        style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          color: Colors.grey,
                        ),
                      ),
                      Spacer(),
                      // ElevatedButton(onPressed: () {}, child: Text('Add'))
                    ],
                  ),
                  const Divider(height: 30),
                  const Text(
                    'About Hybrid Tomatoes',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    '• Grown locally with sustainable farming practices',
                  ),
                  const Text('• Perfect for salads, sauces, and grilling'),
                  const Text('• Rich in vitamins A and C, and antioxidants'),
                  const SizedBox(height: 16),
                  const Text(
                    'Nutritional Info',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const Text('• Calories: 18 per 100g'),
                  const Text('• Vitamins: A, C, K'),
                  const Text('• Antioxidants: Lycopene'),
                  const SizedBox(height: 16),
                  const Text(
                    'Storage Tips',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Store in a cool, dry place. Refrigerate after cutting',
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12),
            color: Colors.grey[100],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Row(
                  children: [
                    Icon(Icons.eco, color: Colors.green),
                    SizedBox(width: 5),
                    Text('Freshness Guaranteed'),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.local_shipping, color: Colors.green),
                    SizedBox(width: 5),
                    Text('Fast Delivery'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
