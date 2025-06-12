import 'package:coffee_shop/Login.dart';
import 'package:coffee_shop/sign_up_screen.dart';
import 'package:flutter/material.dart';

class LogSignSplash extends StatefulWidget {
  const LogSignSplash({super.key});

  @override
  State<LogSignSplash> createState() => _LogSignSplashState();
}

class _LogSignSplashState extends State<LogSignSplash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3c040c),
      body: Expanded(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Stack(
              children: [
                Container(
                    width: double.infinity,
                    child: Image.asset(fit: BoxFit.cover, "assets/bg.png")),
                Padding(
                  padding: const EdgeInsets.only(top: 280),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 100),
                                child: Container(
                                  height: 116,
                                  width: 116,
                                  decoration: BoxDecoration(
                                      color: Color(0xffc43c34),
                                      borderRadius: BorderRadius.circular(70)),
                                  child: Center(
                                    child: Expanded(
                                        child: Image.asset(
                                            "assets/coffee-cup-3 1.png")),
                                  ),
                                ),
                              ),
                              SizedBox(height: 15),
                              Container(
                                height: 60,
                                width: 255,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 168, 26, 26)
                                        .withOpacity(0.3),
                                    borderRadius: BorderRadius.circular(15)),
                                child: Center(
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    "Join us for a cozy coffee experience.",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400,
                                        color: const Color.fromARGB(
                                            255, 223, 223, 223)),
                                  ),
                                ),
                              ),
                              SizedBox(height: 50),
                              Row(
                                children: [
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Color(0xffc43c34)),
                                      onPressed: () {
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  LoginScreen(),
                                            ));
                                      },
                                      child: Text(
                                        "   Login   ",
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.white),
                                      )),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Color(0xffc43c34)),
                                      onPressed: () {
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  Sign_Up_Screen(),
                                            ));
                                      },
                                      child: Text(
                                        " Sign Up ",
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.white),
                                      )),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
