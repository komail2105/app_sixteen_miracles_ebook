import 'package:app_sixteen_miracles_ebook/constants/colors.dart';
import 'package:app_sixteen_miracles_ebook/constants/sizes.dart';
import 'package:app_sixteen_miracles_ebook/models/quran.dart';
import 'package:flutter/material.dart';

class QuranDetail extends StatefulWidget {
  final Quran quran;
  const QuranDetail(this.quran, {Key? key}) : super(key: key);

  @override
  State<QuranDetail> createState() => _QuranDetailState();
}

class _QuranDetailState extends State<QuranDetail> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: mediaquerywidth(context),
          height: 100,
          color: kFont,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 8.0,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Surah ${widget.quran.surahname}",
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "${widget.quran.surahmeaning} | ${widget.quran.arabicname}",
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Text(
                    "Verses: 7",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: const EdgeInsets.only(top: 12),
            height: 140,
            width: 140,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: kFont,
              border: Border.all(
                width: 10,
                color: kFont,
              ),
            ),
            child: Image.asset(
              "assets/images/quran_logo.png",
            ),
          ),
        ),
      ],
    );
  }
}
