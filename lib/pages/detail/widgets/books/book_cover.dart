import 'package:app_sixteen_miracles_ebook/constants/colors.dart';
import 'package:app_sixteen_miracles_ebook/models/book.dart';
import 'package:flutter/material.dart';

class BookCover extends StatefulWidget {
  final Book book;
  const BookCover(this.book, {Key? key}) : super(key: key);

  @override
  State<BookCover> createState() => _BookCoverState();
}

class _BookCoverState extends State<BookCover> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.only(left: 16),
      height: 196,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 50),
            width: MediaQuery.of(context).size.width - 15,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  bottomLeft: Radius.circular(40),
                ),
                color: kColor),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(40),
                bottomLeft: Radius.circular(40),
              ),
              child: Image.asset(
                widget.book.cover,
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high,
              ),
            ),
          )
        ],
      ),
    );
  }
}
