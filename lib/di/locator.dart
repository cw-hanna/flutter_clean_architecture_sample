import 'package:get_it/get_it.dart';
import 'package:image_search/data/data_source/commit_api.dart';
import 'package:image_search/data/repository/commit_api_repository_impl_api.dart';
import 'package:image_search/domain/usecase/get_commits_user_case.dart';

final serviceLocator = GetIt.instance;
void initServiceLocator() {
  serviceLocator.registerLazySingleton<CommitApi>(() => CommitApi());
  serviceLocator.registerLazySingleton<CommitApiRepositoryImpl>(
      () => CommitApiRepositoryImpl());
  serviceLocator
      .registerLazySingleton<GetCommitsUseCase>(() => GetCommitsUseCase());
}
