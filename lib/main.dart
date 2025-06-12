import 'package:coffee_shop/bottom_navigation.dart';
import 'package:coffee_shop/details_product.dart';
import 'package:coffee_shop/home_screen.dart';
import 'package:coffee_shop/log_sign_splash.dart';
import 'package:coffee_shop/onbording.dart';
import 'package:coffee_shop/order.dart';
import 'package:coffee_shop/otp_screen.dart';
import 'package:coffee_shop/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
      )
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        themeMode: context.watch<ThemeProvider>().getThemeValue()
            ? ThemeMode.dark
            : ThemeMode.light,
        darkTheme: ThemeData.dark(),
        theme: ThemeData(
          iconTheme: IconThemeData(color: Colors.amber),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurpleAccent),
          useMaterial3: true,
          textTheme: TextTheme(),
        ),
        home: Onboarding());
  }
}
