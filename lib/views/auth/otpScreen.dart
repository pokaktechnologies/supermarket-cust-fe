import 'package:flutter/material.dart';
import 'package:supermarket_customer_fe/core/themes/app_colors.dart';
import 'package:supermarket_customer_fe/core/utils/navigations.dart';
import 'package:supermarket_customer_fe/views/auth/signup.dart';
import 'package:supermarket_customer_fe/views/home/homeMainScreen.dart';
import 'package:supermarket_customer_fe/widgets/buttons/customButton.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFF8F6),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 150),
              const Text(
                'Enter the OTP',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(4, (index) => _buildOtpBox()),
              ),
              const SizedBox(height: 40),
              CustomButton(
                text: "Login",
                onPressed: () {
                  pushAndRemoveUntilFun(context, const MainScreen());
                },
                buttonColor: AppColors.green,
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account? "),
                  InkWell(
                    onTap: () {
                      pushNavigation(context, const Signup());
                    },
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOtpBox() {
    return Container(
      width: 60,
      height: 60,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade400),
        borderRadius: BorderRadius.circular(6),
      ),
      alignment: Alignment.center,
      child: const TextField(
        maxLength: 1,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 24),
        keyboardType: TextInputType.number,
        decoration: InputDecoration(counterText: '', border: InputBorder.none),
      ),
    );
  }
}
