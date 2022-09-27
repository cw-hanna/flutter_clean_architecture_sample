import 'package:flutter_test/flutter_test.dart';
import 'package:image_search/core/resources/result.dart';
import 'package:image_search/data/models/search_user_model.dart';
import 'package:image_search/domain/repositories/search_user_api_repository.dart';
import 'package:image_search/domain/usecases/search_user_use_case.dart';

import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'search_user_use_case_test.mocks.dart';

@GenerateMocks([SearchUserApiRepository])
void main() {
  test('SearchUserUseCase가 잘 동작해야한다.', () async {
    final mockRepository = MockSearchUserApiRepository();
    final searchUserUseCase = SearchUserUseCase(repository: mockRepository);

    //Mock Repository 객체의 동작과 예상결과를 정의.
    when(mockRepository.fetch('gkssk925')).thenAnswer(
      (realInvocation) async => Result.success(SearchUserModel(
          login: 'gkssk925',
          avatar_url: 'https://avatars.githubusercontent.com/u/35588293?v=4',
          html_url: 'https://github.com/gkssk925',
          name: 'Hanna Choi',
          public_repos: 10)),
    );

    var result = await searchUserUseCase.call('gkssk925');

    var expectedData;

    result.when(
        success: (searchUserModel) {
          expectedData = searchUserModel;
        },
        error: (error) {});

    expect(expectedData.login, 'gkssk925');
  });
}
