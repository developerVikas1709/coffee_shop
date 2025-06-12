import 'package:coffee_shop/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpVeryfiy extends StatefulWidget {
  const OtpVeryfiy({super.key});

  @override
  State<OtpVeryfiy> createState() => _OtpVeryfiyState();
}

class _OtpVeryfiyState extends State<OtpVeryfiy> {
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
                  padding: const EdgeInsets.only(top: 250),
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
                                    height: 260,
                                    width: 310,
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Center(
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 10),
                                            child: Text(
                                              "Verification Code",
                                              style: TextStyle(
                                                  color: Color(0xffcc5454),
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 10),
                                            child: Text(
                                              textAlign: TextAlign.center,
                                              "We have sent the verification\n code to your email address",
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: Color.fromARGB(
                                                    255, 0, 0, 0),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            height: 60,
                                            width: 300,
                                            child: Center(
                                              child: Form(
                                                  child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  SizedBox(
                                                    height: 50,
                                                    width: 50,
                                                    child: TextField(
                                                      onChanged: (value) {
                                                        if (value.length == 1) {
                                                          FocusScope.of(context)
                                                              .nextFocus();
                                                        }
                                                      },
                                                      cursorHeight: 0,
                                                      decoration: InputDecoration(
                                                          border: OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          40))),
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color:
                                                              Color(0xffcc5454),
                                                          fontWeight:
                                                              FontWeight.bold),
                                                      keyboardType: TextInputType
                                                          .numberWithOptions(),
                                                      textAlign:
                                                          TextAlign.center,
                                                      inputFormatters: [
                                                        LengthLimitingTextInputFormatter(
                                                            1),
                                                        FilteringTextInputFormatter
                                                            .digitsOnly,
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 50,
                                                    width: 50,
                                                    child: TextField(
                                                      onChanged: (value) {
                                                        if (value.length == 1) {
                                                          FocusScope.of(context)
                                                              .nextFocus();
                                                        }
                                                      },
                                                      cursorHeight: 0,
                                                      decoration: InputDecoration(
                                                          border: OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          40))),
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          color:
                                                              Color(0xffcc5454),
                                                          fontWeight:
                                                              FontWeight.bold),
                                                      keyboardType: TextInputType
                                                          .numberWithOptions(),
                                                      textAlign:
                                                          TextAlign.center,
                                                      inputFormatters: [
                                                        LengthLimitingTextInputFormatter(
                                                            1),
                                                        FilteringTextInputFormatter
                                                            .digitsOnly,
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 55,
                                                    width: 50,
                                                    child: TextField(
                                                      onChanged: (value) {
                                                        if (value.length == 1) {
                                                          FocusScope.of(context)
                                                              .nextFocus();
                                                        }
                                                      },
                                                      cursorHeight: 0,
                                                      decoration: InputDecoration(
                                                          border: OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          40))),
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          color:
                                                              Color(0xffc43c34),
                                                          fontWeight:
                                                              FontWeight.bold),
                                                      keyboardType: TextInputType
                                                          .numberWithOptions(),
                                                      textAlign:
                                                          TextAlign.center,
                                                      inputFormatters: [
                                                        LengthLimitingTextInputFormatter(
                                                            1),
                                                        FilteringTextInputFormatter
                                                            .digitsOnly,
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 55,
                                                    width: 50,
                                                    child: TextField(
                                                      onChanged: (value) {
                                                        if (value.length == 1) {
                                                          FocusScope.of(context)
                                                              .nextFocus();
                                                        }
                                                      },
                                                      cursorHeight: 0,
                                                      decoration: InputDecoration(
                                                          border: OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          40))),
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          color:
                                                              Color(0xffcc5454),
                                                          fontWeight:
                                                              FontWeight.bold),
                                                      keyboardType: TextInputType
                                                          .numberWithOptions(),
                                                      textAlign:
                                                          TextAlign.center,
                                                      inputFormatters: [
                                                        LengthLimitingTextInputFormatter(
                                                            1),
                                                        FilteringTextInputFormatter
                                                            .digitsOnly,
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              )),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 40,
                                          ),
                                          InkWell(
                                            onTap: () {
Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BottomNavigation()));

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
                                                  "Done",
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
