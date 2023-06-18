import 'package:app_sixteen_miracles_ebook/constants/colors.dart';
import 'package:app_sixteen_miracles_ebook/constants/sizes.dart';
import 'package:app_sixteen_miracles_ebook/models/book.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class BookRead extends StatefulWidget {
  final Book book;

  const BookRead(this.book, {Key? key}) : super(key: key);

  @override
  State<BookRead> createState() => _BookReadState();
}

String data = '';

class _BookReadState extends State<BookRead> {
  fetchFileData(book) async {
    String responseText;

    responseText = await rootBundle.loadString(widget.book.text);

    setState(() {
      data = responseText;
    });
  }

  @override
  void initState() {
    fetchFileData(widget.book.text);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: edgeInsetsall20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 72,
            decoration: BoxDecoration(
              color: kColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "بِسْمِ اللّٰهِ الرَّحْمٰنِ الرَّحِیْمِ",
                style: TextStyle(
                  fontFamily: 'Al Qalam Quran',
                  fontSize: 28,
                  wordSpacing: 2,
                  color: kOrange,
                ),
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            data,
            style: const TextStyle(
              fontFamily: 'Alvi',
              fontSize: 26.5,
              wordSpacing: 2,
              height: 1.5,
              letterSpacing: 0.15,
              color: kFont,
            ),
            textAlign: TextAlign.justify,
            textDirection: TextDirection.rtl,
          ),
        ],
      ),
    );
  }
}
