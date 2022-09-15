import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:image_search/data/data_source/result.dart';
import 'package:image_search/string_utils.dart';

class CommitDetailApi {
  CommitDetailApi();

  Future<Result<String>> fetch(String? url) async {
    if (StringUtil.isValidString(url)) {
      try {
        final response = await http.Client().get(Uri.parse(url!));
        var jsonResponse = jsonDecode(response.body);
        String htmlUrl = jsonResponse['html_url'].toString();

        return Result.success(htmlUrl);
      } catch (e) {
        return const Result.error('네트워크 에러');
      }
    } else {
      return const Result.error('url 에러');
    }
  }
}
