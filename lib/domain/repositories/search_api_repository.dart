import 'package:image_search/core/resources/result.dart';
import 'package:image_search/data/models/search_repo_model.dart';

abstract class SearchRepoApiRepository {
  Future<Result<List<SearchRepoModel>>> fetch(String? userName);
}
