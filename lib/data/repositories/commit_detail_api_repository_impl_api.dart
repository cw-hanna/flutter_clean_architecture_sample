import 'package:image_search/data/data_sources/commit_detail_api.dart';
import 'package:image_search/core/resources/result.dart';
import 'package:image_search/di/locator.dart';
import 'package:image_search/domain/repositories/commit_detail_api_repository.dart';
import 'package:image_search/core/utils/string_util.dart';

class CommitDetailApiRepositoryImpl implements CommitDetailApiRepository {
  CommitDetailApiRepositoryImpl();

  @override
  Future<Result<String>> fetch(url) async {
    if (StringUtil.isValidString(url)) {
      CommitDetailApi api = serviceLocator<CommitDetailApi>();
      final Result<String> result = await api.fetch(url!);

      return result;
    } else {
      return const Result.error('url 에러');
    }
  }
}
