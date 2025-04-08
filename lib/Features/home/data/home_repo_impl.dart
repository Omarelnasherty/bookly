import 'package:bookly/Features/home/data/data%20sources/home_local_data_source.dart';
import 'package:bookly/Features/home/data/data%20sources/home_remote_data_source.dart';
import 'package:bookly/Features/home/domain/entites/book_entity.dart';
import 'package:bookly/Features/home/domain/repos/home_repo.dart';
import 'package:bookly/core/erors/failure.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;

  HomeRepoImpl({
    required this.homeRemoteDataSource,
    required this.homeLocalDataSource,
  });

  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks() async {
    var booksList = homeLocalDataSource.fetchFeaturedBooks();
    if (booksList.isNotEmpty) {
      return right(booksList);
    }
    try {
      var books = await homeRemoteDataSource.fetchFeaturedBooks();
      return right(books);
    } catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks() async {
    List<BookEntity> books;
    books = homeLocalDataSource.fetchNewestBooks();
    if (books.isNotEmpty) {
      return right(books);
    }
    try {
      books = await homeRemoteDataSource.fetchNewestBooks();
      return right(books);
    } catch (e) {
      return left(ServerFailure());
    }
  }
}
