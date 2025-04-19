import 'package:flutter/material.dart';
import 'package:supermarket_customer_fe/core/themes/app_assets.dart';
import 'package:supermarket_customer_fe/core/themes/app_colors.dart';
import 'package:supermarket_customer_fe/core/utils/navigations.dart';
import 'package:supermarket_customer_fe/views/category/single_category_product.dart';

class CategoryProduct extends StatefulWidget {
  const CategoryProduct({super.key});

  @override
  State<CategoryProduct> createState() => _CategoryProductState();
}

class _CategoryProductState extends State<CategoryProduct> {
  bool _isExpanded = false;

  void _toggleExpand() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

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

      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: 55,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  offset: Offset(0, 4),
                  blurRadius: 6,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: _toggleExpand,
                    child: Image.asset(AppAssets.expandIcon),
                  ),
                  dividerContainer(),
                  Row(
                    children: [
                      Image.asset(AppAssets.sortIcon),
                      SizedBox(width: 5),
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
                      SizedBox(width: 5),
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

          AnimatedContainer(
            duration: Duration(milliseconds: 400),
            constraints:
                _isExpanded
                    ? const BoxConstraints(maxHeight: 100)
                    : const BoxConstraints(maxHeight: 0),

            width: double.infinity,
            color: Colors.green.shade50,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: _isExpanded ? ExpandedProduct() : null,
          ),

          // PRODUCT LIST
          ...List.generate(10, (index) {
            return ListTile(
              title: Row(
                children: [
                  SingleCategoryProduct(),
                  SingleCategoryProduct(),
                  SingleCategoryProduct(),
                ],
              ),
            );
          }),
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

class ExpandedProduct extends StatelessWidget {
  const ExpandedProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 10,
      color: AppColors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              SizedBox(
                height: 30,
                width: 50,
                child: Image.asset(AppAssets.vegIcon),
              ),
              Text("Fruits", style: TextStyle(color: AppColors.grey)),
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 30,
                width: 50,
                child: Image.asset(AppAssets.vegIcon),
              ),
              Text("Vegetables", style: TextStyle(color: AppColors.grey)),
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 30,
                width: 50,
                child: Image.asset(AppAssets.vegIcon),
              ),
              Text("Herbs", style: TextStyle(color: AppColors.grey)),
            ],
          ),
        ],
      ),
    );
  }
}
