import '../Widgets/text_widget.dart';
import '../utils/config.dart';
import '../utils/dynamic_sizes.dart';
import 'package:flutter/material.dart';

class NewOrder extends StatefulWidget {
  const NewOrder({Key? key}) : super(key: key);

  @override
  _NewOrderState createState() => _NewOrderState();
}

class _NewOrderState extends State<NewOrder> {
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.noColor,
      body: ListView.builder(
        padding: EdgeInsets.symmetric(
            horizontal: CustomSizes().dynamicWidth(context, 0.01)),
        shrinkWrap: true,
        itemCount: 6,
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

Widget card(context, selectIndex, index, function) {
  return InkWell(
    onTap: function,
    child: Container(
      padding: EdgeInsets.only(
        left: CustomSizes().dynamicHeight(context, 0.005),
      ),
      margin: EdgeInsets.symmetric(
        vertical: CustomSizes().dynamicHeight(context, 0.01),
      ),
      decoration: BoxDecoration(
        color: selectIndex == index
            ? CustomColors.customOrange
            : CustomColors.customBlack,
        borderRadius: BorderRadius.circular(
          CustomSizes().dynamicWidth(context, 0.015),
        ),
      ),
      child: Container(
        width: CustomSizes().dynamicWidth(context, 0.23),
        height: CustomSizes().dynamicHeight(context, 0.12),
        padding: EdgeInsets.symmetric(
          horizontal: CustomSizes().dynamicHeight(context, 0.02),
        ),
        decoration: BoxDecoration(
          color: CustomColors.customBlack,
          borderRadius: BorderRadius.circular(
            CustomSizes().dynamicWidth(context, 0.015),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                text(
                  context,
                  "Task # 00350",
                  0.012,
                  CustomColors.customWhite,
                ),
                Row(
                  children: [
                    Icon(Icons.lock_clock,
                        color: CustomColors.customOrange,
                        size: CustomSizes().dynamicWidth(context, 0.01)),
                    text(
                        context, "as Soon as", 0.007, CustomColors.customOrange,
                        bold: true),
                  ],
                ),
              ],
            ),
            text(context, "\$120", 0.015, CustomColors.customWhite, bold: true)
          ],
        ),
      ),
    ),
  );
}
