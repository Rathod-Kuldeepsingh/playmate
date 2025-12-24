// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playmate/Colors/Colors.dart';

class Sportslist extends StatefulWidget {
  const Sportslist({super.key});

  @override
  State<Sportslist> createState() => _SportslistState();
}

class _SportslistState extends State<Sportslist> {
  int maxPlayers = 12;
  int joinedPlayers = 8;
  int charges = 299;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: 2,
        itemBuilder: (context, index) {
          return _sportsCard();
        },
      ),
    );
  }

  Widget _sportsCard() {
    return Container(
      height: 180,
      margin: const EdgeInsets.only(bottom: 14),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.grey.shade300),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 4),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
       
          /// 🔹 Top Row
          Row(
            children: [
              _chip("Regular"),
              const Spacer(),
              Icon(Icons.bookmark_outline, size: 20),
            ],
          ),

          const SizedBox(height: 12),

          /// 🔹 Players + Price
          Row(
            children: [
              const CircleAvatar(
                radius: 22,
                child: Text("C"),
              ),
              const SizedBox(width: 10),
              Text(
                "$joinedPlayers / $maxPlayers Joined",
                style: GoogleFonts.poppins(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              _priceTag(),
            ],
          ),

          const SizedBox(height: 10),

          /// 🔹 Team & Time
          Row(
            children: [
              Text(
                "Team Name",
                style: GoogleFonts.poppins(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              Text(
                "Today • 09:30 PM",
                style: GoogleFonts.poppins(
                  fontSize: 11,
                  color: Colors.grey.shade700,
                ),
              ),
            ],
          ),

          const SizedBox(height: 6),

          /// 🔹 Location
          Row(
            children: [
              Icon(Icons.location_on_outlined,
                  size: 18, color: Colors.grey.shade700),
              const SizedBox(width: 4),
              Text(
                "Ahmedabad",
                style: GoogleFonts.poppins(
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              Icon(Icons.arrow_forward_ios,
                  size: 14, color: Colors.grey),
            ],
          ),
        ],
      ),
    );
  }

  /// 🔹 Small chip widget
  Widget _chip(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey.shade200,
      ),
      child: Text(
        text,
        style: GoogleFonts.poppins(
          fontSize: 11,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  /// 🔹 Price widget
  Widget _priceTag() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade400),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Image.asset("asset/money.png", height: 16),
          const SizedBox(width: 4),
          Text(
            "₹$charges",
            style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
