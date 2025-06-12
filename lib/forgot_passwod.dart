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
                  padding: const EdgeInsets.only(top: 125),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 85),
                                child: Container(
                                  height: 47,
                                  width: 116,
                                  decoration: BoxDecoration(
                                      color: Color(0xffc43c34),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Center(
                                    child: Text(
                                      "Sign Up",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 23),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 30),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Container(
                                    height: 400,
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
                                              "Sign up to your account",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.white),
                                            ),
                                          ),
                                          Container(
                                            height: 42,
                                            width: 254,
                                            decoration: BoxDecoration(
                                                color: Color(0xffF5F5F5),
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            child: Center(
                                              child: TextFormField(
                                                cursorHeight: 20,
                                                cursorColor: Color(0xffc43c34),
                                                cursorOpacityAnimates: true,
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight:
                                                        FontWeight.w500),
                                                decoration: InputDecoration(
                                                    hintText: "Full name",
                                                    hintStyle:
                                                        TextStyle(fontSize: 15),
                                                    prefixIcon: Icon(
                                                      Icons.person,
                                                      color: Color(0xffc43c34),
                                                    ),
                                                    border: OutlineInputBorder(
                                                        borderSide:
                                                            BorderSide.none)),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Container(
                                            height: 42,
                                            width: 254,
                                            decoration: BoxDecoration(
                                                color: Color(0xffF5F5F5),
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            child: Center(
                                              child: TextFormField(
                                                cursorHeight: 20,
                                                cursorColor: Color(0xffc43c34),
                                                cursorOpacityAnimates: true,
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight:
                                                        FontWeight.w500),
                                                decoration: InputDecoration(
                                                    hintText: "Email address",
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
                                            height: 20,
                                          ),
                                          Container(
                                            height: 42,
                                            width: 254,
                                            decoration: BoxDecoration(
                                                color: Color(0xffF5F5F5),
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            child: Center(
                                              child: TextFormField(
                                                cursorHeight: 20,
                                                cursorColor: Color(0xffcc5454),
                                                cursorOpacityAnimates: true,
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight:
                                                        FontWeight.w500),
                                                decoration: InputDecoration(
                                                    hintText: "Password",
                                                    hintStyle:
                                                        TextStyle(fontSize: 15),
                                                    prefixIcon: Icon(
                                                      Icons.key_outlined,
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
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              TextButton(
                                                  onPressed: () {
                                                    Navigator.pushReplacement(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                LoginScreen()));
                                                  },
                                                  child: Text(
                                                    "LOGIN ACCOUNT      ",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 10,
                                                        color: Color.fromARGB(
                                                            255,
                                                            222,
                                                            222,
                                                            222)),
                                                  ))
                                            ],
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
                                                  "Sign Up",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20,
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
