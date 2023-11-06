import 'package:clothi/manager/color_manager.dart';
import 'package:clothi/manager/font_manager.dart';
import 'package:clothi/manager/image_manager.dart';
import 'package:clothi/manager/space_manager.dart';
import 'package:clothi/presentation/screens/order_details_screen/widgets/cart_caards.dart';
import 'package:clothi/presentation/screens/order_details_screen/widgets/data_list.dart';
import 'package:clothi/presentation/screens/order_details_screen/widgets/order_stepper.dart';
import 'package:clothi/presentation/widgets/back_buttonn.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderDetails extends StatelessWidget {
  OrderDetails({super.key});

  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.only(left: 12),
          child: BackCircle(back: () {
            Get.back();
          }),
        ),
        title: Row(
          children: [
            Text(
              'Order detail ',
              style: appFonts.f16wBoldBlack,
            ),
            Text(
              ' #7436',
              style: appFonts.f16wBoldBluegrey,
            ),
          ],
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              appSpaces.spaceForHeight20,
              Text(
                'Order List',
                style: appFonts.f16w500Black,
              ),
              appSpaces.spaceForHeight20,
              MyCartCard(
                  imageUrl: appImages.img1,
                  title: 'White T-Shirt',
                  size: 'XL',
                  price: "90.09"),
              appSpaces.spaceForHeight10,
              const Divider(),
              appSpaces.spaceForHeight10,
              MyCartCard(
                  imageUrl: appImages.img2,
                  title: 'Black Flull-sleeve Shirt',
                  size: 'XL',
                  price: "240.09"),
              appSpaces.spaceForHeight10,
              const Divider(),
              appSpaces.spaceForHeight10,
              MyCartCard(
                  imageUrl: appImages.img3,
                  title: 'Denim Shirt',
                  size: 'XL',
                  price: "120.09"),
              appSpaces.spaceForHeight25,
              Text(
                'Order List',
                style: appFonts.f16w500Black,
              ),
              appSpaces.spaceForHeight20,
              const DataList(title: 'Sub-Total', trailing: '₹273.46'),
              const DataList(title: 'Delivery Fee', trailing: '₹35.46'),
              const DataList(title: 'Discount', trailing: '₹12.46'),
              appSpaces.spaceForHeight20,
              DottedLine(
                dashLength: 4.0,
                dashColor: appColors.grey),
              appSpaces.spaceForHeight20,
              const DataList(title: 'Total Cost', trailing: '₹252.46'),
              appSpaces.spaceForHeight20,
              Text(
                'Address',
                style: appFonts.f16w500Black,
              ),
              appSpaces.spaceForHeight20,
               SizedBox(
                width: 200,
                child: Text('Nick Ewas White House (H) HSR Layout, Bangalore, Karnataka',style: appFonts.f15w500Grey,)),
              appSpaces.spaceForHeight25,
              Text(
                'Payment Details',
                style: appFonts.f16w500Black,
              ),
              appSpaces.spaceForHeight20,
              const DataList(title: 'Transaction Id', trailing: '#Ae123456789 '),
              const DataList(title: 'Payment Method', trailing: 'Debit Card'),
              const DataList(title: 'Card Holder Name', trailing: 'Nick Evans'),
              const DataList(title: 'Card Number', trailing: 'xxxx xxxx xxxx 1234'),
              appSpaces.spaceForHeight20,
              Text(
                'Order Status',
                style: appFonts.f16w500Black,
              ),
              appSpaces.spaceForHeight20,
              const OrderStepper()
            ],
          ),
        ),
      )),
    );
  }
}


