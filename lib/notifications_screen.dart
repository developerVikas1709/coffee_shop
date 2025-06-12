import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  final List names =[
    "VIKAS",
    "RAHUL",
    "RAVI",
    "SUNIL",
    "     "
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Marquee Example")),
      
    );
  }
}
