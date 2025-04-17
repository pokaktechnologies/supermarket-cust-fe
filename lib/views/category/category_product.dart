import 'package:flutter/material.dart';
import 'package:supermarket_customer_fe/core/themes/app_assets.dart';
import 'package:supermarket_customer_fe/core/themes/app_colors.dart';
import 'package:supermarket_customer_fe/core/utils/navigations.dart';

class CategoryProduct extends StatelessWidget {
  const CategoryProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF27AE60),
        toolbarHeight: 70,
        title: Text("Fresh Produce", style: TextStyle(color: AppColors.white)),
        leading: InkWell(
          onTap: () => popNavigation(context),
          child: Image.asset(AppAssets.backArrow),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: AppColors.white),
            onPressed: () {},
          ),
          Stack(
            children: [
              IconButton(
                icon: Icon(Icons.shopping_cart, color: AppColors.white),
                onPressed: () {},
              ),
              Positioned(
                right: 6,
                top: 6,
                child: Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    '1',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),

      body: Column(
        children: [
          Container(
            height: 55,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  offset: Offset(0, 4), // Only on bottom
                  blurRadius: 6,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(AppAssets.expandIcon),
                  dividerContainer(),
                  Row(
                    children: [
                      Image.asset(AppAssets.sortIcon),
                      Text(
                        "Sort",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  dividerContainer(),
                  Row(
                    children: [
                      Image.asset(AppAssets.filterIcon),
                      Text(
                        "Filter",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return ListTile(title: Text("Item $index"));
              },
            ),
          ),
        ],
      ),
    );
  }
}

Widget dividerContainer() {
  return Container(
    height: 55,
    width: 1,
    // margin: EdgeInsets.symmetric(horizontal: 16),
    color: Colors.black.withOpacity(0.2), // same feel as shadow
  );
}
