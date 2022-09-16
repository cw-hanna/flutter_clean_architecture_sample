import 'package:image_search/core/resources/result.dart';

abstract class CommitDetailApiRepository {
  Future<Result<String>> fetch(String? url);
}
