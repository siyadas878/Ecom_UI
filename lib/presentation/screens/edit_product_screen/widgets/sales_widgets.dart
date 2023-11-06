import 'package:clothi/manager/color_manager.dart';
import 'package:clothi/manager/font_manager.dart';
import 'package:clothi/manager/space_manager.dart';
import 'package:clothi/presentation/screens/home_screen/home_screen.dart';
import 'package:clothi/utils/utility_dimension.dart';
import 'package:flutter/material.dart';

List<String> orderOptions = ['Delivered', 'Pickup', 'Cancelled'];

class SalesWidget extends StatelessWidget {
  const SalesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 230,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: appColors.grey)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    dashboardDatas[1].title,
                    style: appFonts.f15w500Grey,
                  ),
                  Container(
                    height: screenHeight(context) * 0.12,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(dashboardDatas[1].img))),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 35,
                        height: 35,
                        child: Card(
                            color: dashboardDatas[1].staus == 1
                                ? Colors.red[200]
                                : dashboardDatas[1].staus == 2
                                    ? Colors.green[200]
                                    : Colors.purple[200],
                            child: Center(
                                child: Icon(
                              dashboardDatas[1].icon,
                              size: 15,
                            ))),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                '${dashboardDatas[1].rating}K ',
                                style: const TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '${dashboardDatas[1].percent} %',
                                style:
                                    TextStyle(color: dashboardDatas[1].color),
                              ),
                            ],
                          ),
                          Text(
                            'Compare from last week',
                            style: appFonts.f13grey,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          appSpaces.spaceForHeight20,
          SizedBox(
            width: 150,
            child: DropdownButtonFormField(
              decoration:const InputDecoration(border: UnderlineInputBorder(borderSide: BorderSide.none)),
              hint: Text('All orders (${orders.length.toString()})'),
              items: orderOptions
                  .map((String item) =>
                      DropdownMenuItem<String>(value: item, child: Text(item)))
                  .toList(),
              onChanged: (value) {},
            ),
          ),
          const Divider(),
          appSpaces.spaceForHeight10,
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
                physics:const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical:3),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            orders[index].id,
                            style: appFonts.f13bluegrey,
                          ),
                          Text(orders[index].customer, style: appFonts.f13black),
                          Text(orders[index].method, style: appFonts.f13black),
                          Text(orders[index].date, style: appFonts.f13black),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) =>const Divider(),
                  itemCount: orders.length))
        ],
      ),
    );
  }
}

class OrderModel {
  String id;
  String customer;
  String method;
  String date;
  OrderModel({
    required this.customer,
    required this.method,
    required this.id,
    required this.date,
  });
}

List<OrderModel> orders = [
  OrderModel(
      customer: 'Donat', method: 'Cash', id: '#7436', date: 'Aug 02,2023'),
  OrderModel(
      customer: 'suhail', method: 'Card', id: '#7436', date: 'Sep 02,2023'),
  OrderModel(
      customer: 'abhi', method: 'Cash', id: '#7436', date: 'Oct 02,2023'),
  OrderModel(
      customer: 'siyad', method: 'Card', id: '#7436', date: 'Aug 02,2023'),
  OrderModel(
      customer: 'Donat', method: 'Cash', id: '#7436', date: 'Aug 02,2023'),
  OrderModel(
      customer: 'suhail', method: 'Cash', id: '#7436', date: 'Aug 02,2023'),
  OrderModel(
      customer: 'Donat', method: 'Cash', id: '#7436', date: 'Aug 02,2023'),
  OrderModel(
      customer: 'Donat', method: 'Cash', id: '#7436', date: 'Aug 02,2023'),
  OrderModel(
      customer: 'Donat', method: 'Cash', id: '#7436', date: 'Aug 02,2023'),
  OrderModel(
      customer: 'Donat', method: 'Cash', id: '#7436', date: 'Aug 02,2023'),
  OrderModel(
      customer: 'Donat', method: 'Cash', id: '#7436', date: 'Aug 02,2023')
];
