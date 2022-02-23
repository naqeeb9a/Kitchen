
import "package:flutter/material.dart";

import '../utils/config.dart';
import '../utils/dynamic_sizes.dart';
import 'new_order.dart';

class DeliveryOrder extends StatefulWidget {
  const DeliveryOrder({Key? key}) : super(key: key);

  @override
  _DeliveryOrderState createState() => _DeliveryOrderState();
}

class _DeliveryOrderState extends State<DeliveryOrder> {
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.noColor,
      body: ListView.builder(
        padding: EdgeInsets.symmetric(
            horizontal: CustomSizes().dynamicWidth(context, 0.01)),
        shrinkWrap: true,
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return card(
            context,
            selectIndex,
            index,
            () => setState(
              () {
                if (selectIndex == index) {
                  selectIndex = 0;
                } else if (selectIndex != index) {
                  selectIndex = index;
                }
              },
            ),
          );
        },
      ),
    );
  }
}
