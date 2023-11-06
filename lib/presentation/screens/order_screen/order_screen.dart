import 'package:clothi/manager/color_manager.dart';
import 'package:clothi/manager/font_manager.dart';
import 'package:clothi/manager/space_manager.dart';
import 'package:clothi/presentation/screens/edit_product_screen/widgets/sales_widgets.dart';
import 'package:clothi/presentation/screens/order_screen/widgets/failed_row.dart';
import 'package:clothi/presentation/screens/order_screen/widgets/success_row.dart';
import 'package:clothi/utils/utility_dimension.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: const Icon(
          FontAwesomeIcons.barsStaggered,
          color: Colors.black,
        ),
        title: Text(
          'Orders',
          style: appFonts.f16wBoldBlack,
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              appSpaces.spaceForHeight20,
              SizedBox(
                width: 170,
                child: DropdownButtonFormField(
                  decoration: InputDecoration(
                      labelStyle: appFonts.f15wboldblack,
                      border: const UnderlineInputBorder(
                          borderSide: BorderSide.none)),
                  value: _value,
                  items: const <DropdownMenuItem<int>>[
                    DropdownMenuItem(
                      value: 1,
                      child: Text('Successfull Order'),
                    ),
                    DropdownMenuItem(value: 2, child: Text('Failed Order')),
                  ],
                  onChanged: (value) {
                    setState(() {
                      _value = value as int;
                    });
                  },
                ),
              ),
              _value == 1
                  ? const Card(
                      elevation: 5,
                      child: Padding(
                        padding: EdgeInsets.all(12),
                        child: SuccessRow(),
                      ),
                    )
                  : const Card(
                      child: Padding(
                        padding: EdgeInsets.all(12),
                        child: FailedRow(),
                      ),
                    ),
                    SizedBox(
                  width: 150,
                  child: DropdownButtonFormField(
                    decoration: const InputDecoration(
                        border:
                            UnderlineInputBorder(borderSide: BorderSide.none)),
                    hint: Text('All orders (${orders.length.toString()})',style: appFonts.f15wboldblack,),
                    items: orderOptions
                        .map((String item) => DropdownMenuItem<String>(
                            value: item, child: Text(item)))
                        .toList(),
                    onChanged: (value) {},
                  ),
                              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(color: appColors.grey)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal:8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                              appSpaces.spaceForHeight20,
                              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Order ID',
                      style: appFonts.f13grey,
                    ),
                    Text('Customer', style: appFonts.f13grey),
                    Text('Payment Method', style: appFonts.f13grey),
                    Text('Order Date', style: appFonts.f13grey),
                  ],
                              ),
                              appSpaces.spaceForHeight10,
                              const Divider(),
                              SizedBox(
                    height: screenHeight(context) * 0.5,
                    child: ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 3),
                            child: InkWell(
                              onTap: () {
                                Get.toNamed('/OrderDetails');
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    orders[index].id,
                                    style: appFonts.f13bluegrey,
                                  ),
                                  Text(orders[index].customer,
                                      style: appFonts.f13black),
                                  Text(orders[index].method,
                                      style: appFonts.f13black),
                                  Text(orders[index].date,
                                      style: appFonts.f13black),
                                ],
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) => const Divider(),
                        itemCount: orders.length))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
