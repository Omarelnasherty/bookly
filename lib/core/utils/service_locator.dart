import 'package:bookly/Features/home/data/data%20sources/home_local_data_source.dart';
import 'package:bookly/Features/home/data/data%20sources/home_remote_data_source.dart';
import 'package:bookly/Features/home/data/home_repo_impl.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void ServiceLocator() {
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      homeLocalDataSource: HomeLocalDataSourceImpl(),
      homeRemoteDataSource: HomeRepoDataSourceImpl(
        apiService: ApiService(Dio()),
      ),
    ),
  );
}
