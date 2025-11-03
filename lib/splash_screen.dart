import 'package:flutter/material.dart';
import 'package:flutter_splash_login/widgets/logo_text.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3),
        () => Navigator.push(context, MaterialPageRoute(builder: (c) => LoginScreen())),
        
    );
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 115),
                const LogoText(),
                const SizedBox(height: 20),
                Image.asset("assets/images/auth.jpeg"),
                const SizedBox(height: 10),
                Text(
                  "LOREM IPSUM",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(height: 10),
                Center(
                  child: Text(
                    "Lorem Ipsum is a dummy text \n     used as placeholder",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff515151),
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 0,
          bottom: 500,
          left: 50,
          child: SvgPicture.asset("assets/images/Line.svg"),
        ),
        Positioned(
          top: 0,
          bottom: 270,
          left: 21,
          child: SvgPicture.asset("assets/images/lamba.svg"),
        ),
        Positioned(
          top: 0,
          bottom: 470,
          left: 90,
          child: SvgPicture.asset("assets/images/Line.svg"),
        ),
        Positioned(
          top: 0,
          bottom: 200,
          left: 65,
          child: SvgPicture.asset("assets/images/lamba.svg"),
        ),
      ],
    );
  }
}
