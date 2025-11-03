import 'package:flutter/material.dart';
import 'package:flutter_splash_login/app_color.dart';


class LogoText extends StatelessWidget {
  const LogoText({super.key});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn, // ✅ Important line!
      shaderCallback: (bounds) =>
          LinearGradient(
            colors: [AppColors.primary, AppColors.secondary],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
      child: const Text(
        "LOGO",
        style: TextStyle(
          fontFamily: 'Prime',
          fontSize: 100,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
    );
  }
}
