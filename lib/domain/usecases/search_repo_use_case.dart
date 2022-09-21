import 'package:image_search/core/resources/result.dart';
import 'package:image_search/data/models/search_repo_model.dart';
import 'package:image_search/di/locator.dart';
import 'package:image_search/domain/repositories/search_api_repository.dart';

class SearchRepoUseCase {
  SearchRepoUseCase();

  Future<Result<List<SearchRepoModel>>> call(String? userName) async {
    SearchRepoApiRepository repository =
        serviceLocator<SearchRepoApiRepository>();

    final result = await repository.fetch(userName);

    return result;
  }
}
