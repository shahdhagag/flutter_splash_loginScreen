import 'package:flutter/material.dart';
import 'package:flutter_splash_login/Widgets/logo_text.dart';
import 'package:flutter_splash_login/Widgets/text_field.dart';
import 'package:flutter_splash_login/app_color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Controllers
    TextEditingController userName = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController confirmPassword = TextEditingController();

    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 120),
                  const Center(child: LogoText()),

                  Text(
                    "Create an Account",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      fontSize: 24,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Text(
                    "Register to get started",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff515151),
                      fontSize: 14,
                    ),
                  ),

                  const SizedBox(height: 25),

                  // Text fields
                  CustomTextField(
                    controller: userName,
                    hint: "Username",
                    icon: Icons.person_outline,
                  ),
                  const SizedBox(height: 20),

                  CustomTextField(
                    controller: email,
                    hint: "Email",
                    icon: Icons.email_outlined,
                  ),
                  const SizedBox(height: 20),

                  CustomTextField(
                    controller: password,
                    hint: "Password",
                    icon: Icons.lock_outline,
                    isPassword: true,
                  ),
                  const SizedBox(height: 20),

                  CustomTextField(
                    controller: confirmPassword,
                    hint: "Confirm Password",
                    icon: Icons.lock_outline,
                    isPassword: true,
                  ),

                  const SizedBox(height: 30),

                  // Register button
                  Container(
                    width: 199,
                    height: 53,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      gradient: LinearGradient(
                        colors: [
                          AppColors.primary,
                          Colors.black87,
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Text(
                        "Register",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 35),

                  // Or sign up using
                  Text(
                    "Or sign up using",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff515151),
                      fontSize: 16,
                    ),
                  ),

                  const SizedBox(height: 15),

                  // Social icons row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.facebook),
                        color: Colors.blueAccent,
                        iconSize: 30,
                      ),
                      const SizedBox(width: 20),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.g_mobiledata),
                        color: Colors.redAccent,
                        iconSize: 30,
                      ),
                      const SizedBox(width: 20),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.code),
                        color: Colors.black,
                        iconSize: 30,
                      ),
                    ],
                  ),

                  const SizedBox(height: 30),

                  // Already have account? Log in
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account? ",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff515151),
                          fontSize: 14,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context); // go back to login
                        },
                        child: Text(
                          "Log In",
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w600,
                            color: AppColors.primary,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ),

        // Decorative SVGs
        Positioned(
          top: 0,
          left: 40,
          child: SvgPicture.asset("assets/images/Rectangle 12.svg"),
        ),
        Positioned(
          right: 120,
          child: SvgPicture.asset("assets/images/Rectangle 11.svg"),
        ),
      ],
    );
  }
}
