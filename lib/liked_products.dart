import 'package:flutter/material.dart';

class LikedProducts extends StatefulWidget {
  const LikedProducts({super.key});

  @override
  State<LikedProducts> createState() => _LikedProductsState();
}

class _LikedProductsState extends State<LikedProducts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
    appBar: AppBar(title: Text("Liked Products"),centerTitle: true,backgroundColor: Colors.white,),
    );
  }
}