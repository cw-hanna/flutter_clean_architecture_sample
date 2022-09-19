import 'package:get_it/get_it.dart';
import 'package:image_search/data/data_sources/commit_api.dart';
import 'package:image_search/data/data_sources/commit_detail_api.dart';
import 'package:image_search/data/data_sources/org_api.dart';
import 'package:image_search/data/repositories/commit_api_repository_impl_api.dart';
import 'package:image_search/data/repositories/commit_detail_api_repository_impl_api.dart';
import 'package:image_search/data/repositories/org_api_repository_impl.dart';
import 'package:image_search/domain/repositories/commit_api_repository.dart';
import 'package:image_search/domain/repositories/commit_detail_api_repository.dart';
import 'package:image_search/domain/repositories/org_api_repository.dart';
import 'package:image_search/domain/usecases/get_commit_detail_use_case.dart';
import 'package:image_search/domain/usecases/get_commits_use_case.dart';
import 'package:image_search/domain/usecases/get_orgs_use_case.dart';

final serviceLocator = GetIt.instance;
void initServiceLocator() {
  serviceLocator.registerLazySingleton<CommitApi>(() => CommitApi());
  serviceLocator
      .registerLazySingleton<CommitDetailApi>(() => CommitDetailApi());
  serviceLocator.registerLazySingleton<OrgApi>(() => OrgApi());

  serviceLocator.registerLazySingleton<CommitApiRepository>(
      () => CommitApiRepositoryImpl());

  serviceLocator.registerLazySingleton<CommitDetailApiRepository>(
      () => CommitDetailApiRepositoryImpl());
  serviceLocator
      .registerLazySingleton<OrgApiRepository>(() => OrgApiRepositoryImpl());

  serviceLocator.registerLazySingleton<GetCommitDetailUseCase>(
      () => GetCommitDetailUseCase());
  serviceLocator
      .registerLazySingleton<GetCommitsUseCase>(() => GetCommitsUseCase());
  serviceLocator.registerLazySingleton<GetOrgsUseCase>(() => GetOrgsUseCase());
}
