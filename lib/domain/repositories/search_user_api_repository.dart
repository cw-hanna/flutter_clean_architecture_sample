import 'package:image_search/core/resources/result.dart';
import 'package:image_search/data/models/search_user_model.dart';
import 'package:image_search/domain/entities/org.dart';
import 'package:image_search/domain/entities/org_detail.dart';

abstract class SearchUserApiRepository {
  Future<Result<SearchUserModel>> fetch(String? userName);
}
