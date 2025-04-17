import 'package:flutter/material.dart';
import 'package:supermarket_customer_fe/core/themes/app_assets.dart';
import 'package:supermarket_customer_fe/core/themes/app_colors.dart';
import 'package:supermarket_customer_fe/core/utils/navigations.dart';
import 'package:supermarket_customer_fe/views/category/category_product.dart';
import 'package:supermarket_customer_fe/views/home/shop_by_category.dart';
import 'package:supermarket_customer_fe/views/home/top_brands.dart';

class SubcategoryPage extends StatelessWidget {
  final String selectedTitle;
  SubcategoryPage({super.key, required this.selectedTitle});

  final List<String> topBrands = [
    "Hawkins",
    "TTK Prestige",
    "Stovekraft",
    "Bajaj World",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF27AE60),
        toolbarHeight: 70,
        title: Text(selectedTitle, style: TextStyle(color: AppColors.white)),
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
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    pushNavigation(context, CategoryProduct());
                  },
                  child: SingleProduct(
                    text: "Groceries& Kitchen",
                    image: AppAssets.dailySaverImg,
                  ),
                ),
                SingleProduct(
                  text: "Personal Care & Hygiene",
                  image: AppAssets.catImg2,
                ),
                SingleProduct(text: "Baby & Kids", image: AppAssets.catImg3),
                SingleProduct(
                  text: "Household Essentials",
                  image: AppAssets.catImg4,
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SingleProduct(text: "Pet Care", image: AppAssets.catImg5),
                SingleProduct(
                  text: "Health & Wellness",
                  image: AppAssets.catImg6,
                ),
                SingleProduct(text: "Home & Living", image: AppAssets.catImg7),
                SingleProduct(
                  text: "Electronics & Accessories",
                  image: AppAssets.catImg8,
                ),
              ],
            ),

            Row(
              children: [
                SingleProduct(
                  text: "Seasonal & Holiday",
                  image: AppAssets.catImg9,
                ),
                SizedBox(width: 10),
                SingleProduct(
                  text: "Office & School",
                  image: AppAssets.catImg10,
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Top Brands",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SingleBrand(img: AppAssets.brandImg4),
                SingleBrand(img: AppAssets.brandImg2),
                SingleBrand(img: AppAssets.brandImg3),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
