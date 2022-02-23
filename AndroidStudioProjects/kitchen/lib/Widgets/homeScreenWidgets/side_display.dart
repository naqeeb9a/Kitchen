import 'package:flutter/material.dart';

import '../../utils/config.dart';
import '../../utils/dynamic_sizes.dart';

sideDisplay(context) {
  return Expanded(
      child: Container(
          height: CustomSizes().dynamicHeight(context, 1),
          decoration: BoxDecoration(
            color: CustomColors.customWhite,
            borderRadius: BorderRadius.only(
              topRight:
                  Radius.circular(CustomSizes().dynamicWidth(context, 0.025)),
              bottomRight: Radius.circular(
                CustomSizes().dynamicWidth(context, 0.025),
              ),
            ),
          ),
          child: Column()));
}
