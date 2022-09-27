import 'package:image_search/core/resources/result.dart';
import 'package:image_search/data/models/search_user_model.dart';
import 'package:image_search/di/locator.dart';
import 'package:image_search/domain/repositories/search_user_api_repository.dart';

class SearchUserUseCase {
  SearchUserApiRepository? repository;
  SearchUserUseCase({SearchUserApiRepository? repository})
      : repository = repository ?? serviceLocator<SearchUserApiRepository>();

  Future<Result<SearchUserModel>> call(
    String? userName,
  ) async {
    final result = await repository!.fetch(userName);

    return result;
  }
}
