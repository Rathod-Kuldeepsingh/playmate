// ignore_for_file: file_names, non_constant_identifier_names, deprecated_member_use

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playmate/Colors/Colors.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isPasswordHidden = true;
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                    children: [
                      const TextSpan(
                        text:
                            "Please enter your email and password to proceed further as ",
                      ),
                      TextSpan(
                        text: "User",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            color: AppColors.darkGreen,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              customTextField(
                labeltext: 'Enter Email',
                hintText: "Enter the Email",
                keyboardType: TextInputType.emailAddress,
                prefixIcon: Icons.email_outlined,
              ),
              SizedBox(height: 10),
              customTextField(
                labeltext: 'Enter Password',
                hintText: "Enter the Password",
                obscureText: isPasswordHidden,
                keyboardType: TextInputType.emailAddress,
                prefixIcon: Icons.password,
                suffixIcon: isPasswordHidden
                    ? Icons.visibility_off
                    : Icons.visibility,
                onSuffixTap: () {
                  setState(() {
                    isPasswordHidden = !isPasswordHidden;
                  });
                },
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/forget');
                  },
                  child: Text(
                    "Forget Password?",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.darkGreen,
                    ),
                  ),
                ),
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
                    "Login",
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
          
              SizedBox(height: 20),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                  children: [
                    const TextSpan(text: "Don't have an account? "),
                    TextSpan(
                      text: "Create Account",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          color: AppColors.darkGreen,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pushNamed(context, '/registration');
                        },
                    ),
                  ],
                ),
              ),
          
              SizedBox(height: 90),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                    children: [
                      const TextSpan(text: "By signing up,you agree to the "),
                      TextSpan(
                        text: "T&C",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            decoration: TextDecoration.underline,
                            color: AppColors.darkGreen,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushNamed(context, '/create');
                          },
                      ),
                      TextSpan(text: " and "),
                      TextSpan(
                        text: "Privacy Policy",
                        style: GoogleFonts.poppins(
                          decoration: TextDecoration.underline,
                          textStyle: const TextStyle(
                            color: AppColors.darkGreen,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushNamed(context, '/create');
                          },
                      ),
                    ],
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
