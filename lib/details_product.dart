import 'package:coffee_shop/availablesize.dart';
import 'package:coffee_shop/coffee_products.dart';
import 'package:coffee_shop/liked_products.dart';
import 'package:coffee_shop/order.dart';
import 'package:coffee_shop/product.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'coffee_products.dart';

class DetailsProduct extends StatefulWidget {
  
  final Products products;


  const DetailsProduct({required this.products,});

  @override
  State<DetailsProduct> createState() => _DetailsProductState();
}

class _DetailsProductState extends State<DetailsProduct> {
  String selectedSize = 'M';

  final List<String> sizes = ['S', 'M', 'L'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        title: Text(
          "Detail",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LikedProducts(),));
                }, icon: Icon(Icons.favorite_outline_rounded)),
          )
        ],
      ),
      body: Center(
        child: Column(children: [
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width / 1.1,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(16)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(widget.products.image,fit: BoxFit.fill,)),
                      
                    
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(widget.products.tital,
                                 
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Ice/ Hot",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 18,
                                    ),
                                    Text(
                                      "4.8",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "(230)",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                                width: MediaQuery.of(context).size.width / 7),
                            Container(
                              height: 44,
                              width: 44,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Theme.of(context).colorScheme.surfaceVariant),
                              child: Center(
                                child: Image.asset(color: Color(0xffb31814),
                                    scale: 3.5, "assets/Mask Group (7).png",colorBlendMode: BlendMode.srcIn,),
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Container(
                              height: 44,
                              width: 44,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Theme.of(context).colorScheme.surfaceVariant),
                              child: Center(
                                child: Image.asset(color: Color(0xffb31814),
                                    scale: 3.5,
                                    "assets/Type=default, Library=bean.png",colorBlendMode: BlendMode.srcIn,),
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Container(
                              height: 44,
                              width: 44,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Theme.of(context).colorScheme.surfaceVariant),
                              child: Center(
                                child: Image.asset(color: Color(0xffb31814),
                                    scale: 3.5, "assets/Extra Milk.png",colorBlendMode: BlendMode.srcIn,),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    indent: 35,
                    endIndent: 35,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 10),
                        child: Text(
                          "Description",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: ReadMoreText(
                      widget.products.Description,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: const Color.fromARGB(255, 85, 85, 85)),
                      moreStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Theme.of(context).brightness == Brightness.dark
        ? const Color.fromARGB(255, 113, 30, 30) 
        : const Color(0xffcc5454),),
                      trimLines: 2,
                      trimMode: TrimMode.Line,
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 24),
                        child: Text(
                          "Size",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Availablesize(
                          size: 'S',
                        ),
                        Availablesize(
                          size: 'M',
                        ),
                        Availablesize(
                          size: 'L',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 118,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30)),
                        color: Theme.of(context).colorScheme.background,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 6,
                              color: const Color.fromARGB(255, 224, 224, 224))
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 40),
                            child: Column(
                              children: [
                                Text(
                                  "Price",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff909090)),
                                ),
                                Text(
                                  widget.products.price,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Theme.of(context).brightness == Brightness.dark
        ? const Color.fromARGB(255, 113, 30, 30) 
        : const Color(0xffcc5454),),
                                )
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                        final allProduct = MyProducts.allCoffees; 
                              Navigator.push(context, MaterialPageRoute(builder: (context) => OrderProduct(products: widget.products)));
                            },
                            child: Container(
                              height: 56,
                              width: 217,
                              decoration: BoxDecoration(
                                  color: Theme.of(context).brightness == Brightness.dark
        ? const Color.fromARGB(255, 113, 30, 30) 
        : const Color(0xffcc5454),
                                  borderRadius: BorderRadius.circular(16)),
                              child: Center(
                                  child: Text(
                                "Buy Now",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              )),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
