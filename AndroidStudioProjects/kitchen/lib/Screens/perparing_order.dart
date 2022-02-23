import '../utils/config.dart';
import '../utils/dynamic_sizes.dart';
import 'package:flutter/material.dart';

import 'new_order.dart';

class PerparingOrder extends StatefulWidget {
  const PerparingOrder({Key? key}) : super(key: key);

  @override
  _PerparingOrderState createState() => _PerparingOrderState();
}

class _PerparingOrderState extends State<PerparingOrder> {
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.noColor,
      body: ListView.builder(
        padding: EdgeInsets.symmetric(
            horizontal: CustomSizes().dynamicWidth(context, 0.01)),
        shrinkWrap: true,
        itemCount: 2,
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
