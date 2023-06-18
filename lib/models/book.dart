class Book {
  String bookname;
  String name;
  String publisher;
  String review;
  String imgURL;
  DateTime date;
  double height;
  String cover;
  String text;

  Book(
    this.bookname,
    this.name,
    this.publisher,
    this.date,
    this.imgURL,
    this.review,
    this.height,
    this.cover,
    this.text,
  );

  static List<Book> generateBooks() {
    return [
      Book(
          'Sixteen Miracles',
          'Moujza - Hazrat Bibi Fatima Tuz Zahra S.A',
          'Zaidi Book Agency',
          DateTime(2022, 3, 23),
          'assets/images/mojza_1_image.png',
          'Mojza No.1',
          230,
          'assets/images/mojza_1_cover.jpg',
          'assets/moujazay_text/moujzaBibiFatima.txt'),
      Book(
        'Sixteen Miracles',
        'Moujza - Hazrat Ammer Al Momineen Ali A.S',
        'Zaidi Book Agency',
        DateTime(2022, 3, 23),
        'assets/images/mojza_2_image.png',
        'Mojza No.2',
        230,
        'assets/images/mojza_2_cover.jpg',
        'assets/moujazay_text/moujzaImamAli.txt',
      ),
      Book(
        'Sixteen Miracles',
        'Moujza - Hazrat Imam Hussain A.S',
        'Zaidi Book Agency',
        DateTime(2022, 3, 23),
        'assets/images/mojza_3_image.png',
        'Mojza No.3',
        230,
        'assets/images/mojza_3_cover.jpg',
        '',
      ),
      Book(
        'Sixteen Miracles',
        'Moujza - Hazrat Imam Musa Al Kazim A.S',
        'Zaidi Book Agency',
        DateTime(2022, 3, 23),
        'assets/images/mojza_4_image.png',
        'Mojza No.4',
        230,
        'assets/images/mojza_4_cover.jpg',
        '',
      ),
      Book(
        'Sixteen Miracles',
        'Moujza - Hazrat Abbas A.S',
        'Zaidi Book Agency',
        DateTime(2022, 3, 23),
        'assets/images/mojza_5_image.png',
        'Mojza No.5',
        230,
        'assets/images/mojza_5_cover.jpg',
        '',
      ),
    ];
  }
}
