import 'package:coffee_shop/coffee_products.dart';
import 'package:coffee_shop/details_product.dart';
import 'package:coffee_shop/favorite_screen.dart';
import 'package:coffee_shop/order.dart';
import 'package:coffee_shop/product.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  final Products products;
 
  const ProductCard({super.key,required this.products, required product});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      
        child: Container(
          width: MediaQuery.of(context).size.width / 2,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    blurRadius: 5,
                    color: const Color.fromARGB(255, 188, 188, 188))
              ],
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).cardColor),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    height: 115,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Theme.of(context).cardColor),
                    child: Column(
                      children: [
                        Container(
                          height: 110,
                          width: 140,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(widget.products.image,fit: BoxFit.fill,
                                  )),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(widget.products.tital,
              
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(widget.products.subtital,
            
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffA2A2A2)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(widget.products
                    .price,
                      
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).textTheme.bodyLarge?.color),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FavoriteScreen(),
                              ));
                        },
                        child: Container(
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                              color: Theme.of(context).brightness == Brightness.dark
        ? const Color.fromARGB(255, 113, 30, 30) 
        : const Color(0xffcc5454),
                              borderRadius: BorderRadius.circular(8)),
                          child: Center(
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 18,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
      ),
    );
  }
}
