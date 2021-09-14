import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

import './login_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.center,
        children: [
          SplashScreenView(
            navigateRoute: LoginScreen(),
            duration: 10000,
            backgroundColor: Colors.white,
            imageSrc: 'assets/images/logotipo_AltService.png',
            imageSize: 100,
            textType: TextType.ColorizeAnimationText,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Version: Beta 1.0',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ],
      ),
    );
  }
}
