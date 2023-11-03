import 'package:clothi/manager/color_manager.dart';
import 'package:clothi/manager/route_manager.dart';
import 'package:clothi/presentation/screens/add_product_screen/add_product_screen.dart';
import 'package:clothi/presentation/screens/home_screen/home_screen.dart';
import 'package:clothi/presentation/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Clothi Ecommerce',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home:  AddProductScreen(),
      initialRoute: '/AddProductScreen',
      getPages: appRoutes(),
    );
  }
}
