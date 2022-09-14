import 'package:image_search/data/data_source/commit_api.dart';
import 'package:image_search/data/data_source/result.dart';
import 'package:image_search/di/locator.dart';
import 'package:image_search/domain/model/commit.dart';
import 'package:image_search/domain/repository/commit_api_repository.dart';

class CommitApiRepositoryImpl implements CommitApiRepository {
  CommitApiRepositoryImpl();

  @override
  Future<Result<List<Commit>>> fetch() async {
    CommitApi api = serviceLocator<CommitApi>();
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
