import 'package:flutter_test/flutter_test.dart';
import 'package:image_search/core/resources/result.dart';
import 'package:image_search/data/models/org_model.dart';
import 'package:image_search/domain/entities/org.dart';
import 'package:image_search/domain/repositories/org_api_repository.dart';
import 'package:image_search/domain/usecases/get_orgs_use_case.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'get_orgs_use_case_test.mocks.dart';

@GenerateMocks([OrgApiRepository])
void main() {
  test('GetOrgUseCase가 잘 동작해야한다.', () async {
    final mockRepository = MockOrgApiRepository();
    final getOrgUseCase = GetOrgsUseCase(repository: mockRepository);

    when(mockRepository.fetch())
        .thenAnswer((realInvocation) async => Result.success([
              OrgModel(
                  login: 'CowayIT',
                  url: 'https://api.github.com/orgs/CowayIT',
                  repos_url: 'https://api.github.com/orgs/CowayIT/repos',
                  avatar_url:
                      'https://avatars.githubusercontent.com/u/74757606?v=4'),
              OrgModel(
                  login: 'CowayIT',
                  url: 'https://api.github.com/orgs/CowayIT',
                  repos_url: 'https://api.github.com/orgs/CowayIT/repos',
                  avatar_url:
                      'https://avatars.githubusercontent.com/u/74757606?v=4'),
            ]));

    var result = await getOrgUseCase.call();

    List<Org> expectedData = [];

    result.when(
        success: (orgList) {
          expectedData = orgList;
        },
        error: (error) {});

    expect(expectedData.length, 2);
  });
}
