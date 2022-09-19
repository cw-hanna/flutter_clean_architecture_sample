import 'package:image_search/core/resources/result.dart';
import 'package:image_search/domain/entities/org.dart';

abstract class OrgApiRepository {
  Future<Result<List<Org>>> fetch();
}
