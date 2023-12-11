class Book {
  String title;
  DateTime publishDate = DateTime.now();
  String comment;

  Book({
    required this.title,
    required this.comment,
    required this.publishDate,
  });

  Book copyWith({
    String? title,
    DateTime? publishDate,
    String? comment,
  }) {
    return Book(
      title: title ?? this.title,
      publishDate: publishDate ?? this.publishDate,
      comment: comment ?? this.comment,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Book &&
          runtimeType == other.runtimeType &&
          title == other.title &&
          publishDate ==other.publishDate;
// 수정해야함
  @override
  int get hashCode => title.hashCode ^ publishDate.hashCode;
}

void main() {
  final books = <Book>[];

  final bookA =
      Book(title: 'A', comment: 'A', publishDate: DateTime(2023, 12, 07));
  final bookB =
      Book(title: 'A', comment: 'TT', publishDate: DateTime(2023, 12, 07));
  final bookC =
      Book(title: 'B', comment: 'A', publishDate: DateTime(2023, 01, 07));
  final bookD =
      Book(title: 'C', comment: 'A', publishDate: DateTime(2023, 02, 07));

  books.add(bookA);
  books.add(bookB);
  books.add(bookC);
  books.add(bookD);

  books.sort((a, b) => a.publishDate.compareTo(b.publishDate));
  books.forEach((book) {
    print('제목: ${book.title}, 출간일: ${book.publishDate}');
  });

  // print(books.length);
  //제목과 출간일이 같으면 같은 책으로 판단한다.
  print('${bookA == bookB}');

  final bookSet = <Book>{};
  bookSet.add(bookA);
  bookSet.add(bookB);
  bookSet.add(bookC);
  bookSet.add(bookD);
  // 또한 Set 에 넣으면 동일 객체로 판단한다.
  print(bookSet.length);
}
