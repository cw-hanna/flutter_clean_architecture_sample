import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:image_search/core/resources/prefKeys.dart';
import 'package:image_search/core/resources/result.dart';
import 'package:image_search/core/utils/pref_util.dart';

class OrgApi {
  OrgApi();

  final baseUrl = 'https://api.github.com/user/orgs';

  Future<Result<Iterable>> fetch() async {
    try {
      final token = PrefUtil.getString(PrefKeys.PREF_TOKEN);
      final Map<String, String> headers = {
        'Accept': 'application/vnd.github+json',
        'Authorization': token
      };

      final response =
          await http.Client().get(Uri.parse(baseUrl), headers: headers);

      var jsonResponse = jsonDecode(response.body);

      Iterable orgs = jsonResponse;
      return Result.success(orgs);
    } catch (e) {
      return const Result.error('네트워크 에러');
    }
  }
}
