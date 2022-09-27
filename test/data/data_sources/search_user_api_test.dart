import 'package:flutter_test/flutter_test.dart';
import 'package:image_search/core/resources/result.dart';
import 'package:image_search/data/data_sources/search_user_api.dart';
import 'package:image_search/data/models/search_user_model.dart';
import 'package:mockito/annotations.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';

import 'search_user_api_test.mocks.dart';

@GenerateMocks([http.Client]) //Mock환경에쓸 Mock http
void main() {
  test('SearchUser Api를 잘 가져와야한다.', () async {
    final api = SearchUserApi();
    final client = MockClient();

    //when(테스트할 코드)
    //thenAnswer(예상되는 결과)
    when(client.get(Uri.parse(SearchUserApi.baseUrl + 'gkssk925')))
        .thenAnswer((realInvocation) async => http.Response(fakeJsonBody, 200));

    final result = await api.fetch('gkssk925', client: client);

    var expectedData;

    result.when(
        success: (searchUserModel) {
          expectedData = searchUserModel;
        },
        error: (error) {});

    expect(expectedData.login, 'gkssk925');
  });
}

String fakeJsonBody = """{
    "login": "gkssk925",
    "id": 35588293,
    "node_id": "MDQ6VXNlcjM1NTg4Mjkz",
    "avatar_url": "https://avatars.githubusercontent.com/u/35588293?v=4",
    "gravatar_id": "",
    "url": "https://api.github.com/users/gkssk925",
    "html_url": "https://github.com/gkssk925",
    "followers_url": "https://api.github.com/users/gkssk925/followers",
    "following_url": "https://api.github.com/users/gkssk925/following{/other_user}",
    "gists_url": "https://api.github.com/users/gkssk925/gists{/gist_id}",
    "starred_url": "https://api.github.com/users/gkssk925/starred{/owner}{/repo}",
    "subscriptions_url": "https://api.github.com/users/gkssk925/subscriptions",
    "organizations_url": "https://api.github.com/users/gkssk925/orgs",
    "repos_url": "https://api.github.com/users/gkssk925/repos",
    "events_url": "https://api.github.com/users/gkssk925/events{/privacy}",
    "received_events_url": "https://api.github.com/users/gkssk925/received_events",
    "type": "User",
    "site_admin": false,
    "name": "Hanna Choi",
    "company": null,
    "blog": "",
    "location": null,
    "email": null,
    "hireable": null,
    "bio": null,
    "twitter_username": null,
    "public_repos": 10,
    "public_gists": 0,
    "followers": 0,
    "following": 0,
    "created_at": "2018-01-19T04:13:01Z",
    "updated_at": "2022-04-28T08:42:47Z"
}
""";
