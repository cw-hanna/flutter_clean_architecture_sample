import 'package:image_search/core/resources/result.dart';
import 'package:image_search/data/data_sources/org_api.dart';
import 'package:image_search/data/models/org_model.dart';
import 'package:image_search/di/locator.dart';
import 'package:image_search/domain/entities/org.dart';
import 'package:image_search/domain/repositories/org_api_repository.dart';

class OrgApiRepositoryImpl implements OrgApiRepository {
  OrgApi? api;
  OrgApiRepositoryImpl({OrgApi? api}) : api = api ?? serviceLocator<OrgApi>();

  @override
  Future<Result<List<Org>>> fetch() async {
    final Result<Iterable> result = await api!.fetch();

    return result.when(
      success: (iterable) {
        return Result.success(iterable.map((e) {
          return OrgModel.fromJson(e);
        }).toList());
      },
      error: (message) {
        return Result.error(message);
      },
    );
  }
}
