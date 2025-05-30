import 'package:flutter/material.dart';
import 'package:supermarket_customer_fe/views/ai/ai_screen.dart';
import 'package:supermarket_customer_fe/views/category/category.dart';
import 'package:supermarket_customer_fe/views/home/homePage.dart';
import 'package:supermarket_customer_fe/views/offer/offerpage.dart';
import 'package:supermarket_customer_fe/views/re-order/re-order.dart';
import 'package:supermarket_customer_fe/widgets/bottom_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;

  final List<Widget> _pages = const [
    HomePage(),
    CategoryPage(),
    AIScreen(),
    ReorderScreen(),
    Offerpage(),
  ];

  void _onBottomBarTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: selectedIndex, children: _pages),
      bottomNavigationBar: BottomBar(
        selectedIndex: selectedIndex,
        onItemSelected: _onBottomBarTap,
      ),
    );
  }
}
