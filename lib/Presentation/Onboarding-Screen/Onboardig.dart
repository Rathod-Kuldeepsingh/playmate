// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:playmate/Colors/Colors.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Top section
                Column(
                  children: [
                    Image.asset("asset/logo.png"),
                    const SizedBox(height: 30),
          
                    const Text(
                      "Play Together",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: AppColors.darkGreen,
                      ),
                    ),
          
                    const SizedBox(height: 12),
          
                    // Subtitle
                    const Text(
                      "Find players, join games,\nand enjoy sports like never before.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.textDark,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
          
                // Bottom section
                Column(
                  children: [
                    // Get Started Button
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.darkGreen,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        child: const Text(
                          "Get Started",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
          
                    const SizedBox(height: 15),
          
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
