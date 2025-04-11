import 'package:flutter/material.dart';
import 'package:supermarket_customer_fe/core/themes/app_assets.dart';
import 'package:supermarket_customer_fe/core/themes/app_colors.dart';
import 'package:supermarket_customer_fe/core/utils/navigations.dart';
import 'package:supermarket_customer_fe/views/home/assistant_tile.dart';
import 'package:supermarket_customer_fe/views/home/hot_pic_item.dart';
import 'package:supermarket_customer_fe/views/home/recomented_container.dart';
import 'package:supermarket_customer_fe/views/profile/profile_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cloudGrey,
      appBar: AppBar(
        backgroundColor: const Color(0xFF27AE60), // Green color (#27AE60)
        elevation: 0,
        toolbarHeight: 140, // Extend AppBar height
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Row(
              children: [
                const Icon(Icons.location_on_outlined, color: Colors.white),
                const SizedBox(width: 8),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Location',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Location,location',
                      style: TextStyle(color: Colors.white70, fontSize: 12),
                    ),
                  ],
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    pushNavigation(context, const ProfilePage());
                  },
                  child: const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 16,
                    child: Icon(Icons.person, color: Colors.grey),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            // Rounded Search Bar
            Container(
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
          ],
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: const Text(
                    'Hot Picks',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: SizedBox(
                    height: 170,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        HotPickItemSec(
                          title: 'Essential Focus',
                          subtitle: 'Fresh Vegetables',
                          primaryColor: AppColors.mixedLightGreen,
                          textColor: AppColors.green,
                          bottomImg: AppAssets.essentialEllipseIcon,
                          primaryImg: AppAssets.essentialIcon,
                        ),
                        HotPickItemSec(
                          title: 'Daily Saver',
                          subtitle: 'Grocery Discounts',
                          primaryColor: AppColors.softAmber,
                          textColor: AppColors.amberYellow,
                          bottomImg: AppAssets.dailySaverEllipseImg,
                          primaryImg: AppAssets.dailySaverImg,
                        ),
                        HotPickItemSec(
                          title: 'Must-Have',
                          subtitle: 'Snacks & Beverages',
                          primaryColor: Color.fromARGB(255, 239, 185, 175),
                          textColor: AppColors.red,
                          bottomImg: AppAssets.musthaveEllipseIcon,
                          primaryImg: AppAssets.musthaveIcon,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: AppColors.purpleAccent,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Deal of the day\nUp to 50% Off',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColors.white,
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.arrow_right_alt_outlined,
                              color: AppColors.green,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(color: AppColors.lightBrown),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Your personal grocery assistant',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Find recipes, get recommendations, and \nshop smarter with AI',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          Container(
                            height: 30,
                            width: 85,
                            decoration: BoxDecoration(
                              color: AppColors.buttonBrown,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Text(
                                "Try Now",
                                style: TextStyle(
                                  color: AppColors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 12),
                      SizedBox(
                        height: 150,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            AssistantTile(
                              title: 'Recipe\nSuggestions',
                              buttonText: 'Browse',
                              assetImage: AppAssets.recipeImg,
                            ),
                            AssistantTile(
                              title: 'Personalized\npicks',
                              buttonText: 'View',
                              assetImage: AppAssets.personalPicImg,
                            ),
                            AssistantTile(
                              title: 'Meal\nPlanning',
                              buttonText: 'Try Search',
                              assetImage: AppAssets.mealsPlannerImg,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                RecomentedContainer(),
                // SizedBox(height: 124),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
