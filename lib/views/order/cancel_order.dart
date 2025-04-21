import 'package:flutter/material.dart';
import 'package:supermarket_customer_fe/core/themes/app_assets.dart';
import 'package:supermarket_customer_fe/core/themes/app_colors.dart';
import 'package:supermarket_customer_fe/core/utils/navigations.dart';

class CancelOrderScreen extends StatelessWidget {
  const CancelOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFF7F2),
      appBar: AppBar(
        backgroundColor: const Color(0xFF27AE60),
        leading: InkWell(
          onTap: () => popNavigation(context),
          child: Image.asset(AppAssets.backArrow),
        ),
        title: const Text(
          "Cancel Order",
          style: TextStyle(
            color: AppColors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _buildOrderCard(),
            const SizedBox(height: 16),
            _buildOrderStatus(),
            const SizedBox(height: 16),
            _buildReasonDropdown(),
            const SizedBox(height: 16),
            _buildRefundAndPolicy(),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  "Confirm Cancellation",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOrderCard() {
    return Card(
      color: AppColors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Expanded(
                  child: Text(
                    "order_no #552214566",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  "X3",
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            const Text(
              "Delivered on 10/02/2025 , 12:30 pm",
              style: TextStyle(color: Colors.grey),
            ),
            const Divider(height: 24),
            _itemRow("Hybrid Tomato", "₹ 25"),
            _itemRow("Broccoli", "₹ 50"),
            _itemRow("Dark chocolate", "₹ 200"),
            _itemRow("Delivery fee", "₹ 30"),
            _itemRow("GST and charges", "₹ 10"),
            const Divider(height: 24),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total", style: TextStyle(fontWeight: FontWeight.bold)),
                Text("₹ 335", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOrderStatus() {
    return Card(
      color: AppColors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Order Status",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("Processing", style: TextStyle(color: Colors.orange)),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const Icon(Icons.check_circle, color: Colors.green),
                const SizedBox(width: 8),
                const Expanded(
                  child: Divider(color: Colors.green, thickness: 1),
                ),
                const SizedBox(width: 8),
                const Icon(Icons.delivery_dining, color: Colors.green),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Order Confirmed"), Text("Out for Delivery")],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildReasonDropdown() {
    return Card(
      color: AppColors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Reason for Cancellation",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            // DropdownButtonFormField<String>(
            //   decoration: InputDecoration(
            //     border: OutlineInputBorder(),
            //   ),
            //   items: [
            //     DropdownMenuItem(value: "reason1", child: Text("Ordered by mistake")),
            //     DropdownMenuItem(value: "reason2", child: Text("Delivery taking too long")),
            //     DropdownMenuItem(value: "reason3", child: Text("Found cheaper elsewhere")),
            //   ],
            //   hint: Text("Select Reason"),
            //   onChanged: null, // Replace with actual logic
            // ),
          ],
        ),
      ),
    );
  }

  Widget _buildRefundAndPolicy() {
    return Card(
      color: AppColors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Refund Details",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              "• If your order is canceled successfully, the refund will be processed within [X] business days.",
            ),
            Text("• Refund will be credited to your original payment method."),
            SizedBox(height: 16),
            Text(
              "Cancellation Policy",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              "• Orders can only be canceled before they are out for delivery.",
            ),
            Text(
              "• Once the order is out for delivery, cancellation may not be possible.",
            ),
            Text(
              "• For more details, refer to our ",
              style: TextStyle(color: Colors.black),
            ),
            Text(
              "[Cancellation Policy]",
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget _itemRow(String title, String price) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(title), Text(price)],
      ),
    );
  }
}
