class BookEntity {
  final String bookId;
  final String? image;
  final String title;
  final String? authorName;
  final num? price;
  final String? maturityRating;

  BookEntity({
    required this.image,
    required this.title,
    required this.authorName,
    required this.price,
    required this.maturityRating,
    required this.bookId,
  });
}
