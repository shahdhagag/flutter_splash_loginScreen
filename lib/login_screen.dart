import 'package:flutter/material.dart';
import 'package:flutter_splash_login/Widgets/logo_text.dart';
import 'package:flutter_splash_login/Widgets/text_field.dart';
import 'package:flutter_splash_login/app_color.dart';
import 'package:flutter_splash_login/register_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart'; // ✅ make sure to add ionicons in pubspec.yaml
//import 'package:flutter_splash_login/screens/register_screen.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Controllers
    TextEditingController email = TextEditingController();
    TextEditingController userName = TextEditingController();

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
                  const SizedBox(height: 130),
                  const Center(child: LogoText()),

                  Text(
                    "Welcome back!",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      fontSize: 24,
                    ),
                  ),

                  const SizedBox(height: 15),

                  Text(
                    "Log in to existing LOGO account",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff515151),
                      fontSize: 14,
                    ),
                  ),

                  const SizedBox(height: 25),
                  CustomTextField(
                    controller: userName,
                    hint: "Username",
                    icon: Icons.person_outline,
                  ),
                  const SizedBox(height: 25),

                  CustomTextField(
                    controller: email,
                    hint: "Password",
                    icon: Icons.lock_outline,
                  ),
                  const SizedBox(height: 15),

                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forgot Password?",
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff515151),
                        fontSize: 14,
                      ),
                    ),
                  ),

                  const SizedBox(height: 35),

                  // ✅ Gradient Login Button with shadow
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
                        "Log in",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 40),

                  // ✅ Or sign up using
                  Text(
                    "Or sign up using",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff515151),
                      fontSize: 16,
                    ),
                  ),

                  const SizedBox(height: 15),

                  // ✅ Social icons row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Ionicons.logo_facebook),
                        color: Colors.blueAccent,
                        iconSize: 30,
                      ),
                      const SizedBox(width: 20),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Ionicons.logo_google),
                        color: Colors.redAccent,
                        iconSize: 30,
                      ),
                      const SizedBox(width: 20),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Ionicons.logo_github),
                        color: Colors.black,
                        iconSize: 30,
                      ),
                    ],
                  ),

                  const SizedBox(height: 30),

                  // ✅ Don't have an account? Sign Up
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don’t have an account? ",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff515151),
                          fontSize: 14,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const RegisterScreen()),
                          );
                        },

                        child: Text(
                          "Sign Up",
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

        // ✅ Decorative SVGs
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
