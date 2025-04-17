import 'package:flutter/material.dart';
import 'package:supermarket_customer_fe/core/themes/app_assets.dart';
import 'package:supermarket_customer_fe/core/utils/navigations.dart';
import 'package:supermarket_customer_fe/views/category/sub_category.dart';
import 'package:supermarket_customer_fe/views/home/shop_by_category.dart';
import 'package:supermarket_customer_fe/views/home/top_brands.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF27AE60),
        toolbarHeight: 70,
        title: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50), // Rounded pill shape
          ),
          child: const TextField(
            decoration: InputDecoration(
              hintText: 'Search for "Ice Cream"',
              prefixIcon: Icon(Icons.search),
              suffixIcon: Icon(Icons.mic_none, color: Color(0xFF27AE60)),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Categories",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    pushNavigation(
                      context,
                      SubcategoryPage(selectedTitle: "Groceries& Kitchen"),
                    );
                  },
                  child: SingleProduct(
                    text: "Groceries& Kitchen",
                    image: AppAssets.dailySaverImg,
                  ),
                ),
                InkWell(
                  onTap: () {
                    pushNavigation(
                      context,
                      SubcategoryPage(selectedTitle: "Personal Care & Hygiene"),
                    );
                  },
                  child: SingleProduct(
                    text: "Personal Care & Hygiene",
                    image: AppAssets.catImg2,
                  ),
                ),
                InkWell(
                  onTap: () {
                    pushNavigation(
                      context,
                      SubcategoryPage(selectedTitle: "Baby & Kids"),
                    );
                  },
                  child: SingleProduct(
                    text: "Baby & Kids",
                    image: AppAssets.catImg3,
                  ),
                ),
                InkWell(
                  onTap: () {
                    pushNavigation(
                      context,
                      SubcategoryPage(selectedTitle: "Household Essentials"),
                    );
                  },
                  child: SingleProduct(
                    text: "Household Essentials",
                    image: AppAssets.catImg4,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    pushNavigation(
                      context,
                      SubcategoryPage(selectedTitle: "Pet Care"),
                    );
                  },
                  child: SingleProduct(
                    text: "Pet Care",
                    image: AppAssets.catImg5,
                  ),
                ),
                InkWell(
                  onTap: () {
                    pushNavigation(
                      context,
                      SubcategoryPage(selectedTitle: "Health & Wellness"),
                    );
                  },
                  child: SingleProduct(
                    text: "Health & Wellness",
                    image: AppAssets.catImg6,
                  ),
                ),
                InkWell(
                  onTap: () {
                    pushNavigation(
                      context,
                      SubcategoryPage(selectedTitle: "Home & Living"),
                    );
                  },
                  child: SingleProduct(
                    text: "Home & Living",
                    image: AppAssets.catImg7,
                  ),
                ),
                InkWell(
                  onTap: () {
                    pushNavigation(
                      context,
                      SubcategoryPage(
                        selectedTitle: "Electronics & Accessories",
                      ),
                    );
                  },
                  child: SingleProduct(
                    text: "Electronics & Accessories",
                    image: AppAssets.catImg8,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    pushNavigation(
                      context,
                      SubcategoryPage(selectedTitle: "Seasonal & Holiday"),
                    );
                  },
                  child: SingleProduct(
                    text: "Seasonal & Holiday",
                    image: AppAssets.catImg9,
                  ),
                ),
                SizedBox(width: 10),
                InkWell(
                  onTap: () {
                    pushNavigation(
                      context,
                      SubcategoryPage(selectedTitle: "Office & School"),
                    );
                  },
                  child: SingleProduct(
                    text: "Office & School",
                    image: AppAssets.catImg10,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Shop by Brands",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SingleBrand(img: AppAssets.brandImg1),
                SingleBrand(img: AppAssets.brandImg2),
                SingleBrand(img: AppAssets.brandImg3),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SingleBrand(img: AppAssets.brandImg4),
                SingleBrand(img: AppAssets.brandImg2),
                SingleBrand(img: AppAssets.brandImg3),
              ],
            ),

            SizedBox(height: 20),

            Image.asset(AppAssets.categoryBannerImg),
          ],
        ),
      ),
    );
  }
}
