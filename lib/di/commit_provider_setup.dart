import 'package:image_search/data/data_source/commit_api.dart';
import 'package:image_search/data/repository/commit_api_repository_impl_api.dart';
import 'package:image_search/domain/repository/commit_api_repository.dart';
import 'package:image_search/domain/usecase/get_commits_user_case.dart';
import 'package:image_search/presentation/home/commit_view_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:http/http.dart' as http;

// 1. Provider 전체
List<SingleChildWidget> globalCommitProviders = [
  ...commitindependentModels,
  ...commitdependentModels,
  ...commitviewModels,
];

// 2. 독립적인 객체
List<SingleChildWidget> commitindependentModels = [
  Provider<http.Client>(
    create: (context) => http.Client(),
  ),
];

// 3. 2번에 의존성 있는 객체
List<SingleChildWidget> commitdependentModels = [
  ProxyProvider<http.Client, CommitApi>(
    update: (context, client, _) => CommitApi(client),
  ),
  ProxyProvider<CommitApi, CommitApiRepository>(
    update: (context, api, _) => CommitApiRepositoryImpl(api),
  ),
  ProxyProvider<CommitApiRepository, GetCommitsUseCase>(
    update: (context, repository, _) => GetCommitsUseCase(repository),
  ),
];

// 4. ViewModels
List<SingleChildWidget> commitviewModels = [
  ChangeNotifierProvider<CommitViewModel>(
    create: (context) => CommitViewModel(context.read<GetCommitsUseCase>()),
  ),
];
