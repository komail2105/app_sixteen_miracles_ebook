import 'package:app_sixteen_miracles_ebook/constants/colors.dart';
import 'package:app_sixteen_miracles_ebook/constants/sizes.dart';
import 'package:app_sixteen_miracles_ebook/models/book.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BookDetail extends StatefulWidget {
  final Book book;
  const BookDetail(this.book, {Key? key}) : super(key: key);

  @override
  State<BookDetail> createState() => _BookDetailState();
}

class _BookDetailState extends State<BookDetail> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: edgeInsetsall20,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.book.bookname.toUpperCase(),
              style:
                  const TextStyle(color: kOrange, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              widget.book.name,
              style: const TextStyle(
                fontSize: 24,
                color: kFont,
                height: 1.2,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(children: [
                    const TextSpan(
                        text: "Published By: ",
                        style: TextStyle(color: Colors.grey)),
                    TextSpan(
                        text: widget.book.publisher,
                        style: const TextStyle(
                            color: kFont, fontWeight: FontWeight.w500)),
                  ]),
                ),
                Text(
                  DateFormat.yMMMd().format(
                    widget.book.date,
                  ),
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ],
        ));
  }
}
