import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:image_search/core/resources/result.dart';
import 'package:image_search/core/utils/string_util.dart';
import 'package:image_search/data/models/search_user_model.dart';

class SearchUserApi {
  http.Client? client;

  SearchUserApi({http.Client? client}) : client = client ?? http.Client();

  static const baseUrl = 'https://api.github.com/users/';

  Future<Result<SearchUserModel>> fetch(String? userName) async {
    if (StringUtil.isValidString(userName)) {
      try {
        final response = await client!.get(Uri.parse('$baseUrl$userName'));

        var jsonResponse = jsonDecode(response.body);
        var searchUserModel = SearchUserModel.fromJson(jsonResponse);
        return Result.success(searchUserModel);
      } catch (e) {
        return const Result.error('네트워크 에러');
      }
    } else {
      return const Result.error('사용자이름 에러');
    }
  }
}
