import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:supermarket_customer_fe/core/themes/app_assets.dart';
import 'package:supermarket_customer_fe/core/themes/app_colors.dart';
import 'package:supermarket_customer_fe/views/category/single_category_product.dart';

class Offerpage extends StatelessWidget {
  const Offerpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cloudGrey,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          backgroundColor: const Color(0xFF27AE60),
          elevation: 0,
          title: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              children: [
                const Icon(Icons.search, color: Colors.grey),
                const SizedBox(width: 8),
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search for “Ice Cream”',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const Icon(Icons.mic, color: Colors.green),
              ],
            ),
          ),
          actions: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                IconButton(
                  icon: const Icon(Icons.shopping_cart, color: Colors.white),
                  onPressed: () {},
                ),
                const Positioned(
                  right: 8,
                  child: CircleAvatar(
                    radius: 8,
                    backgroundColor: Colors.red,
                    child: Text(
                      '6',
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              const SizedBox(height: 12),
              CarouselSlider(
                items: [
                  Container(
                    margin: const EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage(AppAssets.bannerImg1),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  //2nd Image of Slider
                  Container(
                    margin: const EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage(AppAssets.bannerImg2),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],

                options: CarouselOptions(
                  height: 150.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 8 / 8,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                ),
              ),

              const SizedBox(height: 12),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Deal of the Day",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),

                  Text(
                    "02h 30m 20s",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: AppColors.lightOrange,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SingleCategoryProduct(),
                  SingleCategoryProduct(),
                  SingleCategoryProduct(),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SingleCategoryProduct(),
                  SingleCategoryProduct(),
                  SingleCategoryProduct(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
