import 'package:image_search/data/data_source/result.dart';

abstract class CommitDetailApiRepository {
  Future<Result<String>> fetch(String? url);
}
