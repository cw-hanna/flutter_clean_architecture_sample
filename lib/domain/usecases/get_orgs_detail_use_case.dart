import 'package:image_search/core/resources/result.dart';
import 'package:image_search/di/locator.dart';
import 'package:image_search/domain/entities/commit.dart';
import 'package:image_search/domain/entities/org.dart';
import 'package:image_search/domain/entities/org_detail.dart';
import 'package:image_search/domain/repositories/commit_api_repository.dart';
import 'package:image_search/domain/repositories/org_api_repository.dart';
import 'package:image_search/domain/repositories/org_detail_api_repository.dart';

class GetOrgsDetailUseCase {
  GetOrgsDetailUseCase();

  Future<Result<List<OrgDetail>>> call(String? orgName) async {
    OrgDetailApiRepository repository =
        serviceLocator<OrgDetailApiRepository>();

    final result = await repository.fetch(orgName);

    return result.when(success: (orgs) {
      return Result.success(orgs);
    }, error: (message) {
      return Result.error(message);
    });
  }
}
