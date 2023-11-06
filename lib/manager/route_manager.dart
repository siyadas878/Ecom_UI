import 'package:clothi/presentation/screens/add_category_screen/add_category_screen.dart';
import 'package:clothi/presentation/screens/add_product_screen/add_product_screen.dart';
import 'package:clothi/presentation/screens/created_screen/created_screen.dart';
import 'package:clothi/presentation/screens/edit_product_screen/edit_product_screen.dart';
import 'package:clothi/presentation/screens/home_screen/home_screen.dart';
import 'package:clothi/presentation/screens/login_screen/login_screen.dart';
import 'package:clothi/presentation/screens/nav_bar/nav_bar.dart';
import 'package:clothi/presentation/screens/order_details_screen/order_details_screen.dart';
import 'package:clothi/presentation/screens/order_screen/order_screen.dart';
import 'package:clothi/presentation/screens/otp_screen/otp_screen.dart';
import 'package:clothi/presentation/screens/product_category_screen/product_category_screen.dart';
import 'package:clothi/presentation/screens/profile_screen/profile_screen.dart';
import 'package:clothi/presentation/screens/register_screen/register_screen.dart';
import 'package:clothi/presentation/screens/splash_screen/splash_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

List<GetPage> appRoutes() {
  return [
    GetPage(name: '/',page: () => const SplashScreen(),),
    GetPage(name: '/RegisterScreen', page: () => const RegisterScreen()),
    GetPage(name: '/OtpScreen', page: () => const OtpScreen()),
    GetPage(name: '/CreatedScreen', page: () => const CreatedScreen()),
    GetPage(name: '/LoginScreen', page: () => const LoginScreen()),
    GetPage(name: '/HomeScreen', page: () => const HomeScreen()),
    GetPage(name: '/AddProductScreen', page: () =>  AddProductScreen()),
    GetPage(name: '/NavBar', page: () => const NavBar()),
    GetPage(name: '/EditProductScreen', page: () =>  EditProductScreen()),
    GetPage(name: '/AddCategoryScreen', page: () =>  AddCategoryScreen()),
    GetPage(name: '/ProductCategoryScreen', page: () => const ProductCategoryScreen()),
    GetPage(name: '/OrderScreen', page: () => const OrderScreen()),
    GetPage(name: '/ProfileScreen', page: () => const ProfileScreen()),
    GetPage(name: '/OrderDetails', page: () =>  OrderDetails())
  ];
}
