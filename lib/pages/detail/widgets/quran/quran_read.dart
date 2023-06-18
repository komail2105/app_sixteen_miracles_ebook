import 'package:app_sixteen_miracles_ebook/constants/colors.dart';
import 'package:app_sixteen_miracles_ebook/models/quran.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class QuranRead extends StatefulWidget {
  final Quran quran;

  const QuranRead(this.quran, {Key? key}) : super(key: key);

  @override
  State<QuranRead> createState() => _QuranReadState();
}

String data = '';

class _QuranReadState extends State<QuranRead> {
  fetchFileData(quran) async {
    String responseText;

    responseText = await rootBundle.loadString(widget.quran.text);

    setState(() {
      data = responseText;
    });
  }

  @override
  void initState() {
    fetchFileData(widget.quran.text);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 72,
            decoration: BoxDecoration(
              color: kColor.withOpacity(0.75),
              borderRadius: BorderRadius.circular(18),
            ),
            child: const Text(
              "بِسْمِ اللّٰهِ الرَّحْمٰنِ الرَّحِیْمِ",
              style: TextStyle(
                fontFamily: 'Al Qalam Quran',
                fontSize: 40,
                wordSpacing: 2,
                color: kFont,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              color: kColor.withOpacity(0.75),
              borderRadius: BorderRadius.circular(18),
            ),
            child: Text(
              data,
              style: const TextStyle(
                fontFamily: 'Al Qalam Quran',
                fontSize: 40,
                color: fontColor,
                wordSpacing: 1.5,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
