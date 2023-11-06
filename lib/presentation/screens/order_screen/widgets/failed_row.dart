import 'package:clothi/presentation/screens/order_screen/widgets/order_column.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FailedRow extends StatelessWidget {
  const FailedRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      OrderColumnWidgets(icon:CupertinoIcons.arrow_up_arrow_down ,subTitle: 'Returned',title: '122',color: Colors.red),
      OrderColumnWidgets(icon:CupertinoIcons.exclamationmark_circle ,subTitle: 'Cancelled',title: '25',color: Colors.red),
      OrderColumnWidgets(icon:CupertinoIcons.ant_circle ,subTitle: 'Damaged',title: '12',color: Colors.red),
    ],);
  }
}