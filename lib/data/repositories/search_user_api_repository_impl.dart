import 'package:image_search/core/resources/result.dart';
import 'package:image_search/data/data_sources/search_user_api.dart';
import 'package:image_search/data/models/search_user_model.dart';
import 'package:image_search/data/models/user_model.dart';
import 'package:image_search/di/locator.dart';
import 'package:image_search/domain/repositories/search_user_api_repository.dart';

class SearchUserApiRepositoryImpl implements SearchUserApiRepository {
  SearchUserApiRepositoryImpl();

  @override
  Future<Result<SearchUserModel>> fetch(userName) async {
    SearchUserApi api = serviceLocator<SearchUserApi>();
    final Result<SearchUserModel> result = await api.fetch(userName);

    return result.when(
      success: (searchUserModel) {
        return Result.success(searchUserModel);
      },
      error: (message) {
        return Result.error(message);
      },
    );
  }
}
