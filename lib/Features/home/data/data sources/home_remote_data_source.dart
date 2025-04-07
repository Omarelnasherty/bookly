import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/domain/entites/book_entity.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:hive/hive.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchNewestBooks();
}

class HomeRepoDataSourceImpl extends HomeRemoteDataSource {
  final ApiService apiService;

  HomeRepoDataSourceImpl({required this.apiService});
  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async {
    var data = await apiService.get(
      endPoints: 'volumes?Filtering=free-ebooks&q=Programming',
    );

    List<BookEntity> books = getBooksList(data);

    saveBoxData(books, kFeaturedBox);

    return books;
  }

  void saveBoxData(List<BookEntity> books, String boxName) {
    var box = Hive.box(boxName);
    box.addAll(books);
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() async {
    var data = await apiService.get(
      endPoints: 'volumes?Filtering=free-ebooks&Sorting=newest&q=Programming',
    );

    List<BookEntity> books = getBooksList(data);

    return books;
  }
}

List<BookEntity> getBooksList(Map<String, dynamic> data) {
  List<BookEntity> books = [];
  for (var bookMap in data['items']) {
    books.add(BookModel.fromJson(bookMap));
  }
  return books;
}
