import 'package:app_sixteen_miracles_ebook/constants/colors.dart';
import 'package:app_sixteen_miracles_ebook/constants/sizes.dart';
import 'package:flutter/material.dart';

class CustomTab extends StatelessWidget {
  final int selected;
  final Function callback;

  CustomTab({Key? key, required this.selected, required this.callback})
      : super(key: key);

  final tabs = ["Quran", "16 Moujzay"];

  @override
  Widget build(BuildContext context) {
    final tabwidth = MediaQuery.of(context).size.width;
    return Container(
      margin: edgeInsetsall20,
      decoration:
          BoxDecoration(color: kGrey, borderRadius: BorderRadius.circular(5)),
      width: tabwidth,
      height: 56,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 5),
          itemBuilder: (_, index) => GestureDetector(
                onTap: () => callback(index),
                child: Container(
                  decoration: BoxDecoration(
                      color: selected == index ? kFont : kWhite,
                      borderRadius: BorderRadius.circular(5)),
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  alignment: Alignment.center,
                  width: (tabwidth - 40) / 2 - 10,
                  child: Text(
                    tabs[index],
                    style: TextStyle( 
                        color: selected == index ? kWhite : kFont,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
          separatorBuilder: (_, index) => const SizedBox(
                width: 10,
              ),
          itemCount: tabs.length),
    );
  }
}
