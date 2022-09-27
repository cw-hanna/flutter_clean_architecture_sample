import 'package:image_search/core/resources/result.dart';
import 'package:image_search/di/locator.dart';
import 'package:image_search/domain/entities/commit.dart';
import 'package:image_search/domain/entities/org.dart';
import 'package:image_search/domain/repositories/commit_api_repository.dart';
import 'package:image_search/domain/repositories/org_api_repository.dart';

class GetOrgsUseCase {
  OrgApiRepository? repository;

  GetOrgsUseCase({OrgApiRepository? repository})
      : repository = repository ?? serviceLocator<OrgApiRepository>();

  Future<Result<List<Org>>> call() async {
    final result = await repository!.fetch();

    return result.when(success: (orgs) {
      return Result.success(orgs);
    }, error: (message) {
      return Result.error(message);
    });
  }
}
