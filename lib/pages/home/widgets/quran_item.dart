import 'package:app_sixteen_miracles_ebook/constants/colors.dart';
import 'package:app_sixteen_miracles_ebook/models/quran.dart';
import 'package:app_sixteen_miracles_ebook/pages/detail/qurandetail.dart';
import 'package:flutter/material.dart';

class QuranItem extends StatelessWidget {
  final Quran quran;
  const QuranItem(this.quran, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => QuranDetailPage(quran))),
      child: Container(
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: kGrey,
        ),
        height: quran.height,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Text(
                "Surah No.${quran.surahno}",
                style: const TextStyle(
                    color: kFont, fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              flex: 4,
              child: Center(
                child: Text(
                  quran.arabicname,
                  style: const TextStyle(
                    color: kFont,
                    fontSize: 24,
                    height: 1.2,
                    fontWeight: FontWeight.w800,
                    fontFamily: "Expo Arabic Bold",
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Text(
                quran.surahname,
                style: const TextStyle(
                  color: kFont,
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
