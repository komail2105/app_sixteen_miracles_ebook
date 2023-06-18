import 'package:app_sixteen_miracles_ebook/constants/colors.dart';
import 'package:app_sixteen_miracles_ebook/constants/sizes.dart';
import 'package:app_sixteen_miracles_ebook/models/book.dart';
import 'package:app_sixteen_miracles_ebook/pages/detail/detail.dart';
import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {
  final Book book;
  const BookItem(this.book, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => DetailPage(book))),
      child: Container(
        height: book.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(book.imgURL),
            fit: BoxFit.scaleDown,
            alignment: Alignment.bottomCenter,
            isAntiAlias: true,
          ),
          color: kGrey,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: edgeInsetsall20,
          child: Text(
            book.name,
            textAlign: TextAlign.center,
            softWrap: true,
            style: const TextStyle(
              color: kFont,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
