import 'package:get_it/get_it.dart';
import 'package:image_search/data/data_sources/commit_api.dart';
import 'package:image_search/data/data_sources/commit_detail_api.dart';
import 'package:image_search/data/repositories/commit_api_repository_impl_api.dart';
import 'package:image_search/data/repositories/commit_detail_api_repository_impl_api.dart';
import 'package:image_search/domain/repository/commit_api_repository.dart';
import 'package:image_search/domain/repository/commit_detail_api_repository.dart';
import 'package:image_search/domain/usecase/get_commit_detail_use_case.dart';
import 'package:image_search/domain/usecase/get_commits_use_case.dart';

final serviceLocator = GetIt.instance;
void initServiceLocator() {
  serviceLocator.registerLazySingleton<CommitApi>(() => CommitApi());
  serviceLocator
      .registerLazySingleton<CommitDetailApi>(() => CommitDetailApi());

  serviceLocator.registerLazySingleton<CommitApiRepository>(
      () => CommitApiRepositoryImpl());

  serviceLocator.registerLazySingleton<CommitDetailApiRepository>(
      () => CommitDetailApiRepositoryImpl());

  serviceLocator.registerLazySingleton<GetCommitDetailUseCase>(
      () => GetCommitDetailUseCase());
  serviceLocator
      .registerLazySingleton<GetCommitsUseCase>(() => GetCommitsUseCase());
}
