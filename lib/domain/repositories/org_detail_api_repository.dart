import 'package:image_search/core/resources/result.dart';
import 'package:image_search/domain/entities/org.dart';
import 'package:image_search/domain/entities/org_detail.dart';

abstract class OrgDetailApiRepository {
  Future<Result<List<OrgDetail>>> fetch(String? orgName);
}
