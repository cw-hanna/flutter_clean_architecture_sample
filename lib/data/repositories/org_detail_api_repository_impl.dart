import 'package:image_search/core/resources/result.dart';
import 'package:image_search/data/data_sources/org_detail_api.dart';
import 'package:image_search/data/models/org_detail_model.dart';
import 'package:image_search/di/locator.dart';
import 'package:image_search/domain/entities/org_detail.dart';
import 'package:image_search/core/utils/string_util.dart';
import 'package:image_search/domain/repositories/org_detail_api_repository.dart';

class OrgDetailApiRepositoryImpl implements OrgDetailApiRepository {
  OrgDetailApiRepositoryImpl();

  @override
  Future<Result<List<OrgDetail>>> fetch(orgName) async {
    if (StringUtil.isValidString(orgName)) {
      OrgDetailApi api = serviceLocator<OrgDetailApi>();
      final Result<Iterable> result = await api.fetch(orgName!);

      return result.when(
        success: (iterable) {
          return Result.success(iterable.map((e) {
            return OrgDetailModel.fromJson(e);
          }).toList());
        },
        error: (message) {
          return Result.error(message);
        },
      );
    } else {
      return const Result.error('url 에러');
    }
  }
}
