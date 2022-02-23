import 'package:flutter/material.dart';

import '../../utils/config.dart';
import '../../utils/dynamic_sizes.dart';

sideBar(context) {
  return Padding(
    padding: EdgeInsets.symmetric(
        horizontal: CustomSizes().dynamicWidth(context, 0.01)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: CustomSizes().dynamicWidth(context, 0.02),
          backgroundColor: CustomColors.customOrange,
          // child: CircleAvatar(
          //   radius: CustomSizes().dynamicWidth(context, 0.018),
          //   backgroundImage: const NetworkImage(
          //       'https://www.kakufuh.com/user/news/9/2nb1bpuyh1q0wsn3msplaakcyp-zf-0-.jpg'),
          // ),
        ),
        CustomSizes().heightBox(context, 0.1),
        Icon(
          Icons.person,
          color: CustomColors.customWhite,
          size: CustomSizes().dynamicHeight(context, 0.035),
        ),
        CustomSizes().heightBox(context, 0.02),
        Icon(
          Icons.person,
          color: CustomColors.customWhite,
          size: CustomSizes().dynamicHeight(context, 0.035),
        ),
        CustomSizes().heightBox(context, 0.02),
        Icon(
          Icons.person,
          color: CustomColors.customWhite,
          size: CustomSizes().dynamicHeight(context, 0.035),
        ),
        CustomSizes().heightBox(context, 0.02),
        Icon(
          Icons.person,
          color: CustomColors.customWhite,
          size: CustomSizes().dynamicHeight(context, 0.035),
        ),
        CustomSizes().heightBox(context, 0.02),
        Icon(
          Icons.person,
          color: CustomColors.customWhite,
          size: CustomSizes().dynamicHeight(context, 0.035),
        ),
      ],
    ),
  );
}
