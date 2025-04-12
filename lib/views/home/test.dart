// import 'package:flutter/material.dart';
// import 'package:supermarket_customer_fe/core/themes/app_assets.dart';

// class FlashSaleScreen extends StatelessWidget {
//   const FlashSaleScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final products = [
//       {
//         "name": "Broccoli",
//         "image": AppAssets.recoImge,
//         "discount": "10%",
//         "oldPrice": "₹200",
//         "newPrice": "₹180",
//         "quantity": "1Piece",
//       },
//       {
//         "name": "Almond Milk",
//         "image": AppAssets.recoImge,
//         "discount": "10%",
//         "oldPrice": "₹280",
//         "newPrice": "₹250",
//         "quantity": "1L",
//       },
//       {
//         "name": "Hybrid Tomato",
//         "image": AppAssets.recoImge,
//         "discount": "3%",
//         "oldPrice": "₹100",
//         "newPrice": "₹97",
//         "quantity": "500g",
//       },
//     ];

//     return Scaffold(
//       backgroundColor: const Color(0xFFE8FDF3),
//       body: SafeArea(
//         child: LayoutBuilder(
//           builder: (context, constraints) {
//             return SingleChildScrollView(
//               child: ConstrainedBox(
//                 constraints: BoxConstraints(minHeight: constraints.maxHeight),

//                 child: IntrinsicHeight(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       // Flash Sale Header
//                       Padding(
//                         padding: const EdgeInsets.symmetric(
//                           horizontal: 16,
//                           vertical: 12,
//                         ),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             const Text(
//                               "Flash Sale",
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 18,
//                                 color: Colors.orange,
//                               ),
//                             ),
//                             Row(
//                               children: const [
//                                 Text(
//                                   "02h ",
//                                   style: TextStyle(color: Colors.red),
//                                 ),
//                                 Text(
//                                   "30m ",
//                                   style: TextStyle(color: Colors.red),
//                                 ),
//                                 Text(
//                                   "02s",
//                                   style: TextStyle(color: Colors.red),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),

//                       // Product list
//                       SizedBox(
//                         height: 260,
//                         child: ListView.builder(
//                           scrollDirection: Axis.horizontal,
//                           itemCount: products.length,
//                           itemBuilder: (context, index) {
//                             return Padding(
//                               padding: const EdgeInsets.only(left: 16),
//                               child: ProductCard(product: products[index]),
//                             );
//                           },
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

// class ProductCard extends StatelessWidget {
//   final Map<String, String> product;

//   const ProductCard({super.key, required this.product});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: 150,
//       height: 240, // ✅ Constrain the height explicitly
//       child: Container(
//         margin: const EdgeInsets.only(right: 10),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(12),
//           color: Colors.white,
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // 🔷 Top section with grey background
//             Container(
//               padding: const EdgeInsets.all(8),
//               decoration: const BoxDecoration(
//                 color: Color(0xFFEAEAEA),
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(12),
//                   topRight: Radius.circular(12),
//                 ),
//               ),
//               child: Column(
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Container(
//                         height: 40,
//                         width: 30,
//                         alignment: Alignment.center,
//                         padding: const EdgeInsets.only(top: 10),
//                         child: Text(
//                           product["discount"]!,
//                           style: const TextStyle(
//                             color: Colors.white,
//                             fontSize: 10,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                       Container(
//                         height: 30,
//                         width: 30,
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           border: Border.all(color: Colors.green, width: 1.5),
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                         child: const Center(
//                           child: Icon(Icons.add, size: 16, color: Colors.green),
//                         ),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 10),
//                   Center(
//                     child: Image.network(
//                       product["image"]!,
//                       height: 70,
//                       fit: BoxFit.contain,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     product["name"]!,
//                     style: const TextStyle(fontWeight: FontWeight.w600),
//                     maxLines: 2,
//                     overflow: TextOverflow.ellipsis,
//                   ),
//                   const SizedBox(height: 6),
//                   Row(
//                     children: [
//                       Text(
//                         product["oldPrice"]!,
//                         style: const TextStyle(
//                           fontSize: 12,
//                           decoration: TextDecoration.lineThrough,
//                           color: Colors.grey,
//                         ),
//                       ),
//                       const SizedBox(width: 6),
//                       Text(
//                         product["newPrice"]!,
//                         style: const TextStyle(
//                           fontSize: 14,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 4),
//                   Text(
//                     product["quantity"]!,
//                     style: const TextStyle(color: Colors.grey, fontSize: 12),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class TagPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint =
//         Paint()
//           ..color = Colors.green
//           ..style = PaintingStyle.fill;

//     final path = Path();
//     path.moveTo(0, size.height);
//     path.lineTo(0, size.height * 0.3);
//     path.lineTo(size.width / 2, 0);
//     path.lineTo(size.width, size.height * 0.3);
//     path.lineTo(size.width, size.height);
//     path.close();

//     canvas.drawPath(path, paint);

//     final notchPaint =
//         Paint()
//           ..color = Colors.white
//           ..style = PaintingStyle.fill;

//     canvas.drawCircle(Offset(size.width / 2, 5), 3.5, notchPaint);
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) => false;
// }
