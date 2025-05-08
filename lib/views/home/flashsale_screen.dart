import 'package:flutter/material.dart';
import 'package:supermarket_customer_fe/core/themes/app_assets.dart';
import 'package:supermarket_customer_fe/core/themes/app_colors.dart';
import 'package:supermarket_customer_fe/core/utils/navigations.dart';
import 'package:supermarket_customer_fe/views/product/product_page.dart';

class FlashsaleScreen extends StatelessWidget {
  const FlashsaleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      width: double.infinity,
      color: AppColors.lightGreenContainer,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 8.0,
          bottom: 8.0,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Flash Sale",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: AppColors.buttonBrown,
                  ),
                ),
                Text(
                  "02h 30m 02s",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: AppColors.lightOrange,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),

            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SingleProduct(
                    img: AppAssets.cartItemTwo,
                    heading: "Broccoli",
                  ),
                  SizedBox(width: 10),
                  SingleProduct(
                    img: AppAssets.recoImge,
                    heading: "Organic Almond Milk",
                  ),
                  SizedBox(width: 10),
                  SingleProduct(
                    img: AppAssets.singleImg,
                    heading: "Hybrid Tomato",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SingleProduct extends StatefulWidget {
  final String img;
  final String heading;
  const SingleProduct({super.key, required this.img, required this.heading});

  @override
  State<SingleProduct> createState() => _SingleProductState();
}

class _SingleProductState extends State<SingleProduct> {
  int quantity = 1;

  void incrementQuantity() {
    setState(() {
      quantity++;
    });
  }

  void decrementQuantity() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        pushNavigation(context, ProductPage(img: widget.img));
      },
      child: SizedBox(
        width: 150,
        child: Container(
          margin: const EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: const BoxDecoration(color: Color(0xFFEAEAEA)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset(
                              AppAssets.percentageIg,
                              height: 30,
                              fit: BoxFit.contain,
                            ),
                            const Text(
                              '5%',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        quantity == 0
                            ? GestureDetector(
                              onTap: incrementQuantity,
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.green,
                                    width: 1.5,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const Center(
                                  child: Icon(
                                    Icons.add,
                                    size: 16,
                                    color: Colors.green,
                                  ),
                                ),
                              ),
                            )
                            : Container(
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: Colors.green,
                                  width: 1.5,
                                ),
                              ),
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap: decrementQuantity,
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 6,
                                      ),
                                      child: Icon(
                                        Icons.remove,
                                        size: 14,
                                        color: Colors.green,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    quantity.toString().padLeft(2, '0'),
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Colors.green,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: incrementQuantity,
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 6,
                                      ),
                                      child: Icon(
                                        Icons.add,
                                        size: 14,
                                        color: Colors.green,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                      ],
                    ),
                    Center(
                      child: Image.asset(
                        widget.img,
                        height: 70,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 8,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.heading,
                      style: TextStyle(fontWeight: FontWeight.w600),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Row(
                          children: [
                            Text(
                              "200g",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(width: 4),
                            Icon(
                              Icons.keyboard_arrow_down,
                              size: 20,
                              color: Colors.green,
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "₹200",
                              style: TextStyle(
                                fontSize: 12,
                                decoration: TextDecoration.lineThrough,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(height: 2),
                            Text(
                              "₹180",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
