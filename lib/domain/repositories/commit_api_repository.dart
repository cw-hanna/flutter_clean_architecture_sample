import 'package:image_search/core/resources/result.dart';
import 'package:image_search/domain/entities/commit.dart';

abstract class CommitApiRepository {
  Future<Result<List<Commit>>> fetch(String? owner, String? repo);
}
