import 'package:image_search/data/data_sources/commit_api.dart';
import 'package:image_search/core/resources/result.dart';
import 'package:image_search/data/models/commit_model.dart';
import 'package:image_search/di/locator.dart';
import 'package:image_search/domain/entities/commit.dart';
import 'package:image_search/domain/repositories/commit_api_repository.dart';

class CommitApiRepositoryImpl implements CommitApiRepository {
  CommitApiRepositoryImpl();

  @override
  Future<Result<List<Commit>>> fetch(String? owner, String? repo) async {
    CommitApi api = serviceLocator<CommitApi>();
    final Result<Iterable> result = await api.fetch(owner, repo);

    return result.when(
      success: (iterable) {
        return Result.success(iterable.map((e) {
          return CommitModel.fromJson(e['commit']);
        }).toList());
      },
      error: (message) {
        return Result.error(message);
      },
    );
  }
}
