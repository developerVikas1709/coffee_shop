import 'package:coffee_shop/one_discount_applies.dart';
import 'package:coffee_shop/product.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'product.dart';

class OrderProduct extends StatefulWidget {
  final Products products;
  const OrderProduct({super.key, required this.products});

  @override
  State<OrderProduct> createState() => _OrderProductState();
}

class _OrderProductState extends State<OrderProduct>
    with SingleTickerProviderStateMixin {
      bool isDown = true;
  bool ischakedAmazon = false;
  bool ischakedGPay = false;
  bool ischakedPhonePay = false;
  int count = 0;
  void _increment() {
    setState(() {
      count++;
    });
  }

  void _decrement() {
    setState(() {
      if (count > 0) count--;
    });
  }

  final List<Tab> tabs = [
    Tab(
      text: "Diliver",
    ),
    Tab(
      text: "Picl Up",
    ),
  ];
  late TabController tabsControler;
  @override
  void initState() {
    tabsControler = TabController(length: tabs.length, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    tabsControler.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        title: Text("Order",
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontSize: 16, fontWeight: FontWeight.w700)),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 19, right: 20, left: 20),
              child: Container(
                height: 53,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(12)),
                child: TabBar(
                    dividerHeight: 0,
                    labelPadding: EdgeInsets.only(left: 2, right: 2),
                    indicatorSize: TabBarIndicatorSize.tab,
                    unselectedLabelStyle: TextStyle(fontSize: 16),
                    unselectedLabelColor:
                        Theme.of(context).colorScheme.onSurfaceVariant,
                    labelColor: Colors.white,
                    indicatorPadding: EdgeInsets.all(4),
                    labelStyle:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    dividerColor: Colors.white,
                    indicator: BoxDecoration(
                        color: Theme.of(context).brightness == Brightness.dark
                            ? const Color.fromARGB(255, 113, 30, 30)
                            : const Color(0xffcc5454),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(8)),
                    controller: tabsControler,
                    tabs: tabs),
              ),
            ),
            SizedBox(height: 30),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Container(
                      height: 550,
                      child: TabBarView(controller: tabsControler, children: [
                        Container(
                          width: double.infinity,
                          height: 650,
                          child: Expanded(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              physics: BouncingScrollPhysics(),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 24),
                                        child: Text(
                                          "Delivery Address",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 14),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 24),
                                        child: Text(
                                          "Jl. Kpg Sutoyo",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 24),
                                        child: Text(
                                          "Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xffA2A2A2)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 24, top: 20),
                                        child: GestureDetector(
                                          onTap: () {},
                                          child: Container(
                                            height: 26,
                                            width: 120,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    width: 1,
                                                    color: Color(0xffA2A2A2)),
                                                borderRadius:
                                                    BorderRadius.circular(16)),
                                            child: Center(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons.edit_document,
                                                    size: 14,
                                                    color: Color(0xff313131),
                                                  ),
                                                  Text(
                                                    "Edit Address",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, top: 20),
                                        child: GestureDetector(
                                          onTap: () {},
                                          child: Container(
                                            height: 26,
                                            width: 101,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    width: 1,
                                                    color: Color(0xffA2A2A2)),
                                                borderRadius:
                                                    BorderRadius.circular(16)),
                                            child: Center(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons.file_copy,
                                                    size: 14,
                                                    color: Color(0xff313131),
                                                  ),
                                                  Text(
                                                    "Add Note",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 15),
                                  Divider(
                                    height: 1,
                                    endIndent: 20,
                                    indent: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 15, vertical: 20),
                                        child: Container(
                                          height: 54,
                                          width: 54,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              color: Colors.black),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Image.asset(
                                                fit: BoxFit.cover,
                                                widget.products.image),
                                          ),
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            widget.products.tital,
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            widget.products.subtital,
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400),
                                          )
                                        ],
                                      ),
                                      SizedBox(width: 20),
                                      Row(
                                        children: [
                                          IconButton(
                                            onPressed: _decrement,
                                            icon: Icon(
                                              Icons.remove_circle,
                                              color: Colors.white,
                                              shadows: [
                                                Shadow(
                                                    blurRadius: 2,
                                                    color: const Color.fromARGB(
                                                        255, 52, 52, 52))
                                              ],
                                              size: 20,
                                            ),
                                          ),
                                          Text('$count'),
                                          IconButton(
                                            onPressed: _increment,
                                            icon: Icon(
                                              Icons.add_circle,
                                              color: Colors.white,
                                              shadows: [
                                                Shadow(
                                                    blurRadius: 2,
                                                    color: Color.fromARGB(
                                                        255, 52, 52, 52))
                                              ],
                                              size: 20,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Divider(indent: 20,endIndent: 20,),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 24, vertical: 10),
                                    child: Card(
                                      shadowColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            15,
                                          ),
                                          side: BorderSide(color: Colors.grey)),
                                      elevation: 5.0,
                                      color: Theme.of(context).cardColor,
                                      child: ListTile(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              PageTransition(
                                                isIos: true,
                                                type: PageTransitionType
                                                    .rightToLeft,
                                                duration:
                                                    Duration(milliseconds: 500),
                                                reverseDuration:
                                                    Duration(milliseconds: 500),
                                                child: OneDiscountapply(),
                                              ));
                                        },
                                        trailing: Icon(
                                          Icons.arrow_forward_ios_rounded,
                                          size: 16,
                                        ),
                                        leading: Container(
                                            height: 16,
                                            width: 16,
                                            child: Image.asset(
                                                "assets/Icon (3).png")),
                                        title: Text(
                                          "1 Discount is Applies",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 24),
                                        child: Text(
                                          "Payment Summary",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 24, vertical: 15),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Price",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          widget.products.price,
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 24,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Delivery Fee",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          widget.products.dilevary,
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Center(
                                    child: Expanded(
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.vertical,
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10),
                                              child: ExpansionTile(
                                                collapsedShape:
                                                    BeveledRectangleBorder(
                                                        side: BorderSide.none),
                                                children: [
                                                  Card(
                                                    color: Theme.of(context)
                                                        .cardColor,
                                                    child: ListTile(
                                                      trailing: Icon(
                                                        Icons.arrow_forward,
                                                        size: 20,
                                                        color: Theme.of(context)
                                                                    .brightness ==
                                                                Brightness.dark
                                                            ? const Color
                                                                .fromARGB(255,
                                                                113, 30, 30)
                                                            : const Color(
                                                                0xffcc5454),
                                                      ),
                                                      onTap: () {},
                                                      leading: CircleAvatar(
                                                        backgroundColor:
                                                            Colors.white,
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                          child: Image.asset(
                                                              fit: BoxFit.cover,
                                                              "assets/amazonpngs.png"),
                                                        ),
                                                      ),
                                                      title: Text(
                                                        "Amazon Pay",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                    ),
                                                  ),
                                                  Card(
                                                    color: Theme.of(context)
                                                        .cardColor,
                                                    child: ListTile(
                                                      trailing: Icon(
                                                        Icons.arrow_forward,
                                                        size: 20,
                                                        color: Theme.of(context)
                                                                    .brightness ==
                                                                Brightness.dark
                                                            ? const Color
                                                                .fromARGB(255,
                                                                113, 30, 30)
                                                            : const Color(
                                                                0xffcc5454),
                                                      ),
                                                      onTap: () {},
                                                      leading: CircleAvatar(
                                                        backgroundColor:
                                                            Colors.white,
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                          child: Image.asset(
                                                              fit: BoxFit.cover,
                                                              "assets/pay_phone.png"),
                                                        ),
                                                      ),
                                                      title: Text(
                                                        "Phone Pay",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                    ),
                                                  ),
                                                  Card(
                                                    color: Theme.of(context)
                                                        .cardColor,
                                                    child: ListTile(
                                                      trailing: Icon(
                                                        Icons.arrow_forward,
                                                        size: 20,
                                                        color: Theme.of(context)
                                                                    .brightness ==
                                                                Brightness.dark
                                                            ? const Color
                                                                .fromARGB(255,
                                                                113, 30, 30)
                                                            : const Color(
                                                                0xffcc5454),
                                                      ),
                                                      onTap: () {},
                                                      leading: CircleAvatar(
                                                        backgroundColor:
                                                            Colors.white,
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                          child: Image.asset(
                                                              fit: BoxFit.cover,
                                                              "assets/g psy.png"),
                                                        ),
                                                      ),
                                                      title: Text(
                                                        "G Pay",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                                leading: Icon(
                                                  Icons.wallet,
                                                  color: Theme.of(context)
                                                              .brightness ==
                                                          Brightness.dark
                                                      ? const Color.fromARGB(
                                                          255, 113, 30, 30)
                                                      : const Color(0xffcc5454),
                                                  size: 25,
                                                ),
                                                title: Text(
                                                  "Cash/Wallet",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                                subtitle: Text(
                                                  widget.products.price,
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                    color: Theme.of(context)
                                                                .brightness ==
                                                            Brightness.dark
                                                        ? const Color.fromARGB(
                                                            255, 113, 30, 30)
                                                        : const Color(
                                                            0xffcc5454),
                                                  ),
                                                ),
                                                
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 30, vertical: 20),
                                    child: GestureDetector(
                                      onTap: () {
                                        final now = TimeOfDay.now();
                                        showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              actionsAlignment:
                                                  MainAxisAlignment.center,
                                              icon: Container(
                                                  child: Icon(
                                                Icons.cloud_done_outlined,
                                                size: 40,
                                                color: Colors.green,
                                              )),
                                              title: Text(
                                                "Success",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              content: Text(
                                                  textAlign: TextAlign.center,
                                                  "Payment Successful 🎉 \nYour order has been placed successfully.\n${now.format(context)}"),
                                              actions: [
                                                TextButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: Text(
                                                      "Done",
                                                      style: TextStyle(
                                                          color: Theme.of(context)
                                                                      .brightness ==
                                                                  Brightness
                                                                      .dark
                                                              ? const Color
                                                                  .fromARGB(255,
                                                                  113, 30, 30)
                                                              : const Color(
                                                                  0xffcc5454),
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ))
                                              ],
                                            );
                                          },
                                        );
                                      },
                                      child: Container(
                                        height: 56,
                                        width: 327,
                                        decoration: BoxDecoration(
                                            color:
                                                Theme.of(context).brightness ==
                                                        Brightness.dark
                                                    ? const Color.fromARGB(
                                                        255, 113, 30, 30)
                                                    : const Color(0xffcc5454),
                                            borderRadius:
                                                BorderRadius.circular(16)),
                                        child: Center(
                                          child: Text(
                                            "Order",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 500,
                          child: Row(
                            children: [
                              Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 24),
                                  child: SizedBox())
                            ],
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
