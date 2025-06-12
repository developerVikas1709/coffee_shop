import 'package:coffee_shop/bottom_navigation.dart';
import 'package:coffee_shop/log_sign_splash.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Image.asset(
                  "assets/Image Onboarding.png",
                  width: double.infinity,
                  height: 548,
                  fit: BoxFit.fill,
                ),
                Container(
                  height: 210,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black,
                        Color(0xff3c040c).withOpacity(1.0),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned.fill(
              top: 480,
              child: Column(
                children: [
                  Text(
                    "Fall in love with\n Coffee in Blissful \n Delight!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Welcome to our cozy coffee corner, where\n every cup is a delightful for you.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xffA2A2A2),
                    ),
                  ),
                  SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LogSignSplash(),
                            ));
                      },
                      child: Container(
                        height: 56,
                        width: 356,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Color(0xffc43c34),
                        ),
                        child: Center(
                          child: Text(
                            "Get Started",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
