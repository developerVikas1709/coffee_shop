import 'package:coffee_shop/Login.dart';
import 'package:coffee_shop/otp_screen.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
                              SizedBox(height: 30),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Container(
                                    height: 200,
                                    width: 310,
                                    decoration: BoxDecoration(
                                        color: Color(0xffc43c34),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Center(
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 20),
                                            child: Text(
                                              "Forgot your password",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Container(
                                            height: 50,
                                            width: 254,
                                            decoration: BoxDecoration(
                                                color: Color(0xffF5F5F5),
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            child: Center(
                                              child: TextFormField(maxLines: 1,
                                                cursorHeight: 40,
                                                cursorColor: Color(0xffcc5454),
                                                cursorOpacityAnimates: true,
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w500),
                                                decoration: InputDecoration(
                                                    hintText: "Email Address",
                                                    hintStyle:
                                                        TextStyle(fontSize: 15),
                                                    prefixIcon: Icon(
                                                      Icons.email_outlined,
                                                      color: Color(0xffcc5454),
                                                    ),
                                                    border: OutlineInputBorder(
                                                        borderSide:
                                                            BorderSide.none)),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          SizedBox(height: 20),
                                          InkWell(
                                            onTap: () {
                                              Navigator.pushReplacement(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          OtpVeryfiy()));
                                            },
                                            child: Container(
                                              height: 42,
                                              width: 254,
                                              decoration: BoxDecoration(
                                                  color: Color(0xff3e2723),
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              child: Center(
                                                child: Text(
                                                  "Submit",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
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
