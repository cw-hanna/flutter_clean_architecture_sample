import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:image_search/core/resources/result.dart';
import 'package:image_search/core/utils/string_util.dart';

///Repository검색 Api
///userName : 레포지토리 검색할 사용자아이디
class SearchRepoApi {
  SearchRepoApi();

  static const baseUrl = 'https://api.github.com/users/';

  Future<Result<Iterable>> fetch(String? userName) async {
    if (StringUtil.isValidString(userName)) {
      try {
        final response =
            await http.Client().get(Uri.parse('$baseUrl$userName/repos'));

        var jsonResponse = jsonDecode(response.body);
        Iterable searchRepoModel = jsonResponse;
        return Result.success(searchRepoModel);
      } catch (e) {
        return const Result.error('네트워크 에러');
      }
    } else {
      return const Result.error('사용자이름 에러');
    }
  }
}
