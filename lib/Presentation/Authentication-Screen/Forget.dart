import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playmate/Colors/Colors.dart';

class Forget extends StatefulWidget {
  const Forget({super.key});

  @override
  State<Forget> createState() => _ForgetState();
}

class _ForgetState extends State<Forget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Center(
                child: Image.asset("asset/logo.png", width: 200, height: 200),
              ),
              Text(
                "Forget Password",
                style: GoogleFonts.poppins(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: AppColors.textDark,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Enter your registered email and we’ll send a reset link.",
                style: GoogleFonts.poppins(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: AppColors.textDark,
                ),
              ),
              SizedBox(height: 20),
              customTextField(
                hintText: 'Enter the Email',
                labeltext: "Email",
                prefixIcon: Icons.email_outlined,
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 350,
                height: 44,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.darkGreen,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/dash');
                  },
                  child: Text(
                    "Verify",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        color: AppColors.background,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget customTextField({
  IconData? prefixIcon,
  IconData? suffixIcon,
  required String hintText,
  required String labeltext,
  TextEditingController? controller,
  TextInputType keyboardType = TextInputType.text,
  bool obscureText = false,
  VoidCallback? onSuffixTap,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
    child: TextField(
      cursorColor: AppColors.mint,
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      style: GoogleFonts.poppins(fontSize: 16, color: AppColors.textDark),
      decoration: InputDecoration(
        label: Text(labeltext),
        labelStyle: GoogleFonts.poppins(
          color: AppColors.textblack,
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
        prefixIcon: prefixIcon != null
            ? Icon(prefixIcon, color: AppColors.darkGreen)
            : null,
        suffixIcon: suffixIcon != null
            ? IconButton(
                icon: Icon(suffixIcon, color: AppColors.darkGreen),
                onPressed: onSuffixTap,
              )
            : null,
        hintText: hintText,
        hintStyle: GoogleFonts.poppins(
          color: AppColors.textDark.withOpacity(0.6),
          fontSize: 15,
          fontWeight: FontWeight.w400,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColors.darkGreen, width: 1.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColors.darkGreen, width: 1.5),
        ),
      ),
    ),
  );
}
