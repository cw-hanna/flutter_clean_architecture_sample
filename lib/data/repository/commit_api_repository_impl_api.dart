import 'package:image_search/data/data_source/commit_api.dart';
import 'package:image_search/data/data_source/result.dart';
import 'package:image_search/domain/model/commit.dart';
import 'package:image_search/domain/repository/commit_api_repository.dart';

class CommitApiRepositoryImpl implements CommitApiRepository {
  CommitApi api;

  CommitApiRepositoryImpl(this.api);

  @override
  Future<Result<List<Commit>>> fetch() async {
    final Result<Iterable> result = await api.fetch();

    return result.when(
      success: (iterable) {
        return Result.success(iterable.map((e) {
          return Commit.fromJson(e['commit']);
        }).toList());
      },
      error: (message) {
        return Result.error(message);
      },
    );
  }
}
