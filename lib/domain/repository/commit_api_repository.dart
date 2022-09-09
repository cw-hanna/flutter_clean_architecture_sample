import 'package:image_search/data/data_source/result.dart';
import 'package:image_search/domain/model/commit.dart';

abstract class CommitApiRepository {
  Future<Result<List<Commit>>> fetch();
}
