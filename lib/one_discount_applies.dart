import 'package:flutter/material.dart';

class OneDiscountapply extends StatelessWidget {
  const OneDiscountapply({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
    appBar: AppBar(backgroundColor: Theme.of(context).appBarTheme.backgroundColor,title: Text("Discounts",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),centerTitle: true,),
    );
  }
}