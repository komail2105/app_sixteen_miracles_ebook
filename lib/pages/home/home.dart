import 'package:app_sixteen_miracles_ebook/pages/home/widgets/custom_tab.dart';
import 'package:app_sixteen_miracles_ebook/pages/home/widgets/staggered_gridview.dart';
import 'package:flutter/material.dart';
import 'package:app_sixteen_miracles_ebook/constants/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<bool> selectedPage = <bool>[true, false];
  bool vertical = false;

  var tabIndex = 0;
  var bottomIndex = 0;
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: Column(
        children: [
          CustomTab(
              selected: tabIndex,
              callback: (int index) {
                setState(() {
                  tabIndex = index;
                });
                pageController.jumpToPage(index);
              }),
          Expanded(
            child: SGV(
                selected: tabIndex,
                pageController: pageController,
                callback: (int index) {
                  setState(() {
                    tabIndex = index;
                  });
                  pageController.jumpToPage(index);
                }),
          ),
        ],
      ),
    );
  }
}
