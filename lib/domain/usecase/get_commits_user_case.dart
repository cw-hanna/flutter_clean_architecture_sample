import 'package:image_search/data/data_source/result.dart';
import 'package:image_search/di/locator.dart';
import 'package:image_search/domain/model/commit.dart';
import 'package:image_search/domain/repository/commit_api_repository.dart';
import 'package:image_search/data/repository/commit_api_repository_impl_api.dart';

class GetCommitsUseCase {
  GetCommitsUseCase();

  Future<Result<List<Commit>>> call() async {
    CommitApiRepository repository = serviceLocator<CommitApiRepositoryImpl>();

    final result = await repository.fetch();

    return result.when(success: (commits) {
      return Result.success(commits);
    }, error: (message) {
      return Result.error(message);
    });
  }
}
