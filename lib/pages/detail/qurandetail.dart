import 'package:app_sixteen_miracles_ebook/constants/colors.dart';
import 'package:app_sixteen_miracles_ebook/models/quran.dart';

import 'package:app_sixteen_miracles_ebook/pages/detail/widgets/quran/quran_detail.dart';
import 'package:app_sixteen_miracles_ebook/pages/detail/widgets/quran/quran_read.dart';
import 'package:flutter/material.dart';

class QuranDetailPage extends StatefulWidget {
  final Quran quran;
  const QuranDetailPage(this.quran, {Key? key}) : super(key: key);

  @override
  State<QuranDetailPage> createState() => _QuranDetailPageState();
}

class _QuranDetailPageState extends State<QuranDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kWhite,
        appBar: _buildAppBar(context),
        body: Column(mainAxisSize: MainAxisSize.min, children: [
          Expanded(
            flex: 2,
            child: QuranDetail(widget.quran),
          ),
          Expanded(
            flex: 7,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(widget.quran.logo))),
              child: SingleChildScrollView(
                child: QuranRead(widget.quran),
              ),
            ),
          ),
        ]));
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
