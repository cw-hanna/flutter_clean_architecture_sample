import 'package:image_search/core/resources/result.dart';
import 'package:image_search/data/data_sources/search_repo_api.dart';
import 'package:image_search/data/models/search_repo_model.dart';
import 'package:image_search/di/locator.dart';
import 'package:image_search/domain/repositories/search_api_repository.dart';

class SearchRepoApiRepositoryImpl implements SearchRepoApiRepository {
  SearchRepoApiRepositoryImpl();

  @override
  Future<Result<List<SearchRepoModel>>> fetch(userName) async {
    SearchRepoApi api = serviceLocator<SearchRepoApi>();
    final Result<Iterable> result = await api.fetch(userName);

    return result.when(
      success: (iterable) {
        return Result.success(iterable.map((e) {
          return SearchRepoModel.fromJson(e);
        }).toList());
      },
      error: (message) {
        return Result.error(message);
      },
    );
  }
}
