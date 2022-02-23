import 'package:flutter/material.dart';
import 'package:kitchen/Screens/new_order.dart';

import '../../Screens/delivery_order.dart';
import '../../Screens/perparing_order.dart';
import '../../utils/config.dart';
import '../../utils/dynamic_sizes.dart';
import '../text_widget.dart';

taskCounter(context) {
  return Container(
    width: CustomSizes().dynamicWidth(context, .3),
    decoration: BoxDecoration(
      color: CustomColors.customGrey.withOpacity(0.4),
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(CustomSizes().dynamicWidth(context, 0.025)),
        bottomLeft: Radius.circular(
          CustomSizes().dynamicWidth(context, 0.025),
        ),
      ),
    ),
    child: DefaultTabController(
      animationDuration: const Duration(milliseconds: 400),
      length: 3,
      child: Padding(
        padding: EdgeInsets.all(CustomSizes().dynamicWidth(context, 0.02)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                text(context, "Task List", 0.02, CustomColors.customWhite,
                    bold: true),
                const Icon(
                  Icons.menu,
                  color: CustomColors.customWhite,
                ),
              ],
            ),
            CustomSizes().heightBox(context, 0.01),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: CustomSizes().dynamicWidth(context, 0.01)),
              height: CustomSizes().dynamicHeight(context, 0.06),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  CustomSizes().dynamicWidth(context, 0.01),
                ),
                color: CustomColors.customWhite,
              ),
              child: TabBar(
                labelStyle: TextStyle(
                    fontSize: CustomSizes().dynamicHeight(context, 0.018),
                    fontWeight: FontWeight.w700),
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    CustomSizes().dynamicWidth(context, 0.01),
                  ),
                  color: CustomColors.customOrange,
                ),
                labelColor: CustomColors.customWhite,
                unselectedLabelColor: CustomColors.customBlack,
                tabs: const [
                  Tab(text: "New"),
                  Tab(text: "Preparing"),
                  Tab(text: "Delivery"),
                ],
              ),
            ),
            CustomSizes().heightBox(context, 0.01),
            const Expanded(
              child: TabBarView(
                children: [
                  NewOrder(),
                  PerparingOrder(),
                  DeliveryOrder(),
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}
