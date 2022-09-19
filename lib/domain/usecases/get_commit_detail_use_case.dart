import 'package:image_search/core/resources/result.dart';
import 'package:image_search/di/locator.dart';
import 'package:image_search/domain/repositories/commit_detail_api_repository.dart';
import 'package:image_search/core/utils/string_util.dart';

class GetCommitDetailUseCase {
  GetCommitDetailUseCase();

  Future<Result<String>> call(String? url) async {
    if (StringUtil.isValidString(url)) {
      CommitDetailApiRepository repository =
          serviceLocator<CommitDetailApiRepository>();

      final result = await repository.fetch(url!);

      return result;
    } else {
      return const Result.error('네트워크 에러');
    }
  }
}
