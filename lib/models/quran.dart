class Quran {
  String surahno;
  String surahname;
  String surahmeaning;
  String arabicname;
  String revelation;
  double height;
  String logo;
  String text;
  String recitername = "Ahmad Al Shalabi";
  String audio;

  Quran(
    this.surahno,
    this.surahname,
    this.surahmeaning,
    this.arabicname,
    this.revelation,
    this.height,
    this.logo,
    this.text,
    this.audio,
  );

  static List<Quran> generateSurahs() {
    return [
      Quran(
          '1',
          'Al Fatihah',
          'The Opening',
          'الفاتحة',
          'Makkah',
          120,
          'assets/images/kaba_logo.png',
          'assets/quran_text/surah001.txt',
          '01.mp3'),
      Quran(
          '2',
          'Al Baqarah',
          'The Cow',
          'اﻟﺒﻘﺮة',
          'Madina',
          120,
          'assets/images/madina_logo.png',
          'assets/quran_text/surah001.txt',
          '02.mp3'),
      Quran(
          '3',
          'Aale Imran',
          'The Family Of Imran',
          'آل عمران',
          'Madina',
          120,
          'assets/images/mojza_1_cover.jpg',
          'assets/moujazay_text/moujzaBibiFatima.txt',
          '02.mp3'),
      Quran(
          '4',
          'An Nisa',
          'The Opening',
          'اﻟﻨﺴﺄ',
          'Madina',
          120,
          'assets/images/mojza_1_cover.jpg',
          'assets/moujazay_text/moujzaBibiFatima.txt',
          '02.mp3'),
      Quran(
          '5',
          'Al Maidah',
          'The Opening',
          'المائدة',
          'Madina',
          120,
          'assets/images/mojza_1_cover.jpg',
          'assets/moujazay_text/moujzaBibiFatima.txt',
          '02.mp3'),
      Quran(
          '6',
          'Al Anam',
          'The Opening',
          'الأنعام',
          'Madina',
          120,
          'assets/images/mojza_1_cover.jpg',
          'assets/moujazay_text/moujzaBibiFatima.txt',
          '02.mp3'),
      Quran(
          '7',
          '	Al Araf',
          'The Opening',
          'الأعراف',
          'Madina',
          120,
          'assets/images/mojza_1_cover.jpg',
          'assets/moujazay_text/moujzaBibiFatima.txt',
          '02.mp3'),
      Quran(
          '8',
          'Al Anfal',
          'The Opening',
          'الأنفال',
          'Madina',
          120,
          'assets/images/mojza_1_cover.jpg',
          'assets/moujazay_text/moujzaBibiFatima.txt',
          '02.mp3'),
      Quran(
          '9',
          'At Tawbah',
          'The Opening',
          'التوبة',
          'Madina',
          120,
          'assets/images/mojza_1_cover.jpg',
          'assets/moujazay_text/moujzaBibiFatima.txt',
          '02.mp3'),
      Quran(
          '10',
          'Yunus',
          'The Opening',
          'يونس',
          'Madina',
          120,
          'assets/images/mojza_1_cover.jpg',
          'assets/moujazay_text/moujzaBibiFatima.txt',
          '02.mp3'),
      Quran(
          '11',
          'Hud',
          'The Opening',
          'هود',
          'Madina',
          120,
          'assets/images/mojza_1_cover.jpg',
          'assets/moujazay_text/moujzaBibiFatima.txt',
          '02.mp3'),
      Quran(
          '12',
          'Yusuf',
          'The Opening',
          'يوسف',
          'Madina',
          120,
          'assets/images/mojza_1_cover.jpg',
          'assets/moujazay_text/moujzaBibiFatima.txt',
          '02.mp3'),
    ];
  }
}
