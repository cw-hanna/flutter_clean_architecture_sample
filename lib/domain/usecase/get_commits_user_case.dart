import 'package:image_search/data/data_source/result.dart';
import 'package:image_search/domain/model/commit.dart';
import 'package:image_search/domain/repository/commit_api_repository.dart';

class GetCommitsUseCase {
  final CommitApiRepository repository;

  GetCommitsUseCase(this.repository);

  Future<Result<List<Commit>>> call() async {
    final result = await repository.fetch();

    return result.when(success: (commits) {
      return Result.success(commits);
    }, error: (message) {
      return Result.error(message);
    });
  }
}
