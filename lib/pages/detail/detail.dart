import 'package:app_sixteen_miracles_ebook/constants/colors.dart';
import 'package:app_sixteen_miracles_ebook/models/book.dart';
import 'package:app_sixteen_miracles_ebook/pages/detail/widgets/books/book_cover.dart';
import 'package:app_sixteen_miracles_ebook/pages/detail/widgets/books/book_detail.dart';
import 'package:app_sixteen_miracles_ebook/pages/detail/widgets/books/book_read.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final Book book;

  const DetailPage(this.book, {Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kWhite,
        appBar: _buildAppBar(context),
        body: SingleChildScrollView(
          child: Column(
            children: [
              BookDetail(widget.book),
              BookCover(widget.book),
              BookRead(widget.book),
            ],
          ),
        ));
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kWhite,
      elevation: 0,
      leading: IconButton(
        onPressed: () => Navigator.of(context).pop(),
        icon: const Icon(
          Icons.arrow_back_ios_outlined,
          color: kFont,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () => {},
          icon: const Icon(Icons.more_vert_outlined),
          color: kFont,
        )
      ],
    );
  }
}
