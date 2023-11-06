import 'package:clothi/manager/route_manager.dart';
import 'package:clothi/presentation/screens/nav_bar/nav_bar.dart';
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
      home: const NavBar(),
      initialRoute: '/',
      getPages: appRoutes(),
    );
  }
}
