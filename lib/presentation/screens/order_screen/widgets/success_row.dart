import 'package:clothi/presentation/screens/order_screen/widgets/order_column.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SuccessRow extends StatelessWidget {
  const SuccessRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      OrderColumnWidgets(icon:CupertinoIcons.list_bullet ,subTitle: 'All Orders',title: '2K',color: Colors.green),
      OrderColumnWidgets(icon:FontAwesomeIcons.spinner ,subTitle: 'Pending',title: '70',color: Colors.green),
      OrderColumnWidgets(icon:CupertinoIcons.cart ,subTitle: 'Completed',title: '120',color: Colors.green),
      OrderColumnWidgets(icon:FontAwesomeIcons.barsProgress ,subTitle: 'Progress',title: '60',color: Colors.green)
    ],);
  }
}
