import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:image_search/core/resources/result.dart';

class CommitApi {
  CommitApi();

  static const baseUrl = 'https://api.github.com/repos/';
  static const owner = 'gkssk925';
  static const repo = 'flutter_inappwebview';

  Future<Result<Iterable>> fetch() async {
    try {
      final response =
          await http.Client().get(Uri.parse('$baseUrl$owner/$repo/commits'));

      var jsonResponse = jsonDecode(response.body);

      Iterable commits = jsonResponse;
      return Result.success(commits);
    } catch (e) {
      return const Result.error('네트워크 에러');
    }
  }
}
