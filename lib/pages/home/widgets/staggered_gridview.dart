import 'package:app_sixteen_miracles_ebook/constants/colors.dart';
import 'package:app_sixteen_miracles_ebook/models/book.dart';
import 'package:app_sixteen_miracles_ebook/models/quran.dart';
import 'package:app_sixteen_miracles_ebook/pages/home/widgets/book_item.dart';
import 'package:app_sixteen_miracles_ebook/pages/home/widgets/quran_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SGV extends StatelessWidget {
  final int selected;
  final PageController pageController;
  final Function callback;

  SGV(
      {Key? key,
      required this.selected,
      required this.pageController,
      required this.callback})
      : super(key: key);
  final bookList = Book.generateBooks();
  final surahList = Quran.generateSurahs();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kColor,
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: PageView(
        controller: pageController,
        onPageChanged: (index) => callback(index),
        children: [
          StaggeredGridView.countBuilder(
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 6,
            itemCount: surahList.length,
            itemBuilder: (_, index) => QuranItem(
              surahList[index],
            ),
            staggeredTileBuilder: (_) => const StaggeredTile.count(2, 2),
          ),
          StaggeredGridView.countBuilder(
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            crossAxisCount: 4,
            itemCount: bookList.length,
            itemBuilder: (_, index) => BookItem(
              bookList[index],
            ),
            staggeredTileBuilder: (_) => const StaggeredTile.fit(2),
          ),
        ],
      ),
    );
  }
}
