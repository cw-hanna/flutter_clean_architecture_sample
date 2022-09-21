import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:image_search/core/resources/result.dart';
import 'package:image_search/core/utils/string_util.dart';

class CommitApi {
  CommitApi();

  static const baseUrl = 'https://api.github.com/repos/';


  Future<Result<Iterable>> fetch(String? owner, String? repo) async {
    if(StringUtil.isValidString(owner) && StringUtil.isValidString(repo)){
       try {
      final response =
          await http.Client().get(Uri.parse('$baseUrl$owner/$repo/commits'));

      var jsonResponse = jsonDecode(response.body);

      Iterable commits = jsonResponse;
      return Result.success(commits);
    } catch (e) {
      return const Result.error('네트워크 에러');
    }
    }else{
       return const Result.error('사용자명 혹은 레포지토리명 에러');
    }
   
  }
}
