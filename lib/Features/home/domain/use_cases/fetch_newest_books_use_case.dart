import 'package:bookly/Features/home/domain/repos/home_repo.dart';
import 'package:bookly/core/erors/failure.dart';
import 'package:dartz/dartz.dart';

import '../entites/book_entity.dart';

class FetchNewestBooksUseCases {
  final HomeRepo homeRepo;

  FetchNewestBooksUseCases(this.homeRepo);

  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks() {
    return homeRepo.fetchNewestBooks();
  }
}
