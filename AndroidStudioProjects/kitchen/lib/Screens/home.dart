
import "package:flutter/material.dart";

import '../Widgets/homeScreenWidgets/side_bar.dart';
import '../Widgets/homeScreenWidgets/side_display.dart';
import '../Widgets/homeScreenWidgets/task_counter.dart';
import '../utils/config.dart';
import '../utils/dynamic_sizes.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.customBlack,
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: CustomSizes().dynamicWidth(context, 0.01),
            horizontal: CustomSizes().dynamicWidth(context, 0.01)),
        child: Row(
          children: [
            sideBar(context),
            taskCounter(context),
            sideDisplay(context)
          ],
        ),
      ),
    );
  }
}
