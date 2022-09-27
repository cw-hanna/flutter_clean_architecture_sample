import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:image_search/core/resources/result.dart';
import 'package:image_search/data/data_sources/org_api.dart';
import 'package:image_search/data/models/org_model.dart';
import 'package:image_search/data/repositories/org_api_repository_impl.dart';
import 'package:image_search/domain/entities/org.dart';

import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'org_api_repository_impl_test.mocks.dart';

@GenerateMocks([OrgApi])
void main() {
  test('OrgApiRepositoryImpl이 잘 동작해야한다.', () async {
    final mockApi = MockOrgApi();
    final orgApiRepositoryImpl = OrgApiRepositoryImpl(api: mockApi);

    when(mockApi.fetch()).thenAnswer(
        (realInvocation) async => Result.success(jsonDecode(fakeJsonBody)));

    var result = await orgApiRepositoryImpl.fetch();

    List<Org> expectedData = [];

    result.when(
        success: (orgList) {
          expectedData = orgList;
        },
        error: (error) {});

    expect(expectedData.length, 9);
  });
}

String fakeJsonBody = """[
    {
        "login": "CowayIT",
        "id": 74757606,
        "node_id": "MDEyOk9yZ2FuaXphdGlvbjc0NzU3NjA2",
        "url": "https://api.github.com/orgs/CowayIT",
        "repos_url": "https://api.github.com/orgs/CowayIT/repos",
        "events_url": "https://api.github.com/orgs/CowayIT/events",
        "hooks_url": "https://api.github.com/orgs/CowayIT/hooks",
        "issues_url": "https://api.github.com/orgs/CowayIT/issues",
        "members_url": "https://api.github.com/orgs/CowayIT/members{/member}",
        "public_members_url": "https://api.github.com/orgs/CowayIT/public_members{/member}",
        "avatar_url": "https://avatars.githubusercontent.com/u/74757606?v=4",
        "description": ""
    },
    {
        "login": "cw-smart-catalogue",
        "id": 75777466,
        "node_id": "MDEyOk9yZ2FuaXphdGlvbjc1Nzc3NDY2",
        "url": "https://api.github.com/orgs/cw-smart-catalogue",
        "repos_url": "https://api.github.com/orgs/cw-smart-catalogue/repos",
        "events_url": "https://api.github.com/orgs/cw-smart-catalogue/events",
        "hooks_url": "https://api.github.com/orgs/cw-smart-catalogue/hooks",
        "issues_url": "https://api.github.com/orgs/cw-smart-catalogue/issues",
        "members_url": "https://api.github.com/orgs/cw-smart-catalogue/members{/member}",
        "public_members_url": "https://api.github.com/orgs/cw-smart-catalogue/public_members{/member}",
        "avatar_url": "https://avatars.githubusercontent.com/u/75777466?v=4",
        "description": ""
    },
    {
        "login": "cw-admin",
        "id": 76022029,
        "node_id": "MDEyOk9yZ2FuaXphdGlvbjc2MDIyMDI5",
        "url": "https://api.github.com/orgs/cw-admin",
        "repos_url": "https://api.github.com/orgs/cw-admin/repos",
        "events_url": "https://api.github.com/orgs/cw-admin/events",
        "hooks_url": "https://api.github.com/orgs/cw-admin/hooks",
        "issues_url": "https://api.github.com/orgs/cw-admin/issues",
        "members_url": "https://api.github.com/orgs/cw-admin/members{/member}",
        "public_members_url": "https://api.github.com/orgs/cw-admin/public_members{/member}",
        "avatar_url": "https://avatars.githubusercontent.com/u/76022029?v=4",
        "description": null
    },
    {
        "login": "cw-cody-contents",
        "id": 76022061,
        "node_id": "MDEyOk9yZ2FuaXphdGlvbjc2MDIyMDYx",
        "url": "https://api.github.com/orgs/cw-cody-contents",
        "repos_url": "https://api.github.com/orgs/cw-cody-contents/repos",
        "events_url": "https://api.github.com/orgs/cw-cody-contents/events",
        "hooks_url": "https://api.github.com/orgs/cw-cody-contents/hooks",
        "issues_url": "https://api.github.com/orgs/cw-cody-contents/issues",
        "members_url": "https://api.github.com/orgs/cw-cody-contents/members{/member}",
        "public_members_url": "https://api.github.com/orgs/cw-cody-contents/public_members{/member}",
        "avatar_url": "https://avatars.githubusercontent.com/u/76022061?v=4",
        "description": null
    },
    {
        "login": "cw-app-renewal",
        "id": 76086504,
        "node_id": "MDEyOk9yZ2FuaXphdGlvbjc2MDg2NTA0",
        "url": "https://api.github.com/orgs/cw-app-renewal",
        "repos_url": "https://api.github.com/orgs/cw-app-renewal/repos",
        "events_url": "https://api.github.com/orgs/cw-app-renewal/events",
        "hooks_url": "https://api.github.com/orgs/cw-app-renewal/hooks",
        "issues_url": "https://api.github.com/orgs/cw-app-renewal/issues",
        "members_url": "https://api.github.com/orgs/cw-app-renewal/members{/member}",
        "public_members_url": "https://api.github.com/orgs/cw-app-renewal/public_members{/member}",
        "avatar_url": "https://avatars.githubusercontent.com/u/76086504?v=4",
        "description": null
    },
    {
        "login": "cw-shared",
        "id": 81200379,
        "node_id": "MDEyOk9yZ2FuaXphdGlvbjgxMjAwMzc5",
        "url": "https://api.github.com/orgs/cw-shared",
        "repos_url": "https://api.github.com/orgs/cw-shared/repos",
        "events_url": "https://api.github.com/orgs/cw-shared/events",
        "hooks_url": "https://api.github.com/orgs/cw-shared/hooks",
        "issues_url": "https://api.github.com/orgs/cw-shared/issues",
        "members_url": "https://api.github.com/orgs/cw-shared/members{/member}",
        "public_members_url": "https://api.github.com/orgs/cw-shared/public_members{/member}",
        "avatar_url": "https://avatars.githubusercontent.com/u/81200379?v=4",
        "description": null
    },
    {
        "login": "cw-bizMob-core",
        "id": 83991985,
        "node_id": "MDEyOk9yZ2FuaXphdGlvbjgzOTkxOTg1",
        "url": "https://api.github.com/orgs/cw-bizMob-core",
        "repos_url": "https://api.github.com/orgs/cw-bizMob-core/repos",
        "events_url": "https://api.github.com/orgs/cw-bizMob-core/events",
        "hooks_url": "https://api.github.com/orgs/cw-bizMob-core/hooks",
        "issues_url": "https://api.github.com/orgs/cw-bizMob-core/issues",
        "members_url": "https://api.github.com/orgs/cw-bizMob-core/members{/member}",
        "public_members_url": "https://api.github.com/orgs/cw-bizMob-core/public_members{/member}",
        "avatar_url": "https://avatars.githubusercontent.com/u/83991985?v=4",
        "description": null
    },
    {
        "login": "cw-ecampus",
        "id": 86760130,
        "node_id": "MDEyOk9yZ2FuaXphdGlvbjg2NzYwMTMw",
        "url": "https://api.github.com/orgs/cw-ecampus",
        "repos_url": "https://api.github.com/orgs/cw-ecampus/repos",
        "events_url": "https://api.github.com/orgs/cw-ecampus/events",
        "hooks_url": "https://api.github.com/orgs/cw-ecampus/hooks",
        "issues_url": "https://api.github.com/orgs/cw-ecampus/issues",
        "members_url": "https://api.github.com/orgs/cw-ecampus/members{/member}",
        "public_members_url": "https://api.github.com/orgs/cw-ecampus/public_members{/member}",
        "avatar_url": "https://avatars.githubusercontent.com/u/86760130?v=4",
        "description": null
    },
    {
        "login": "cw-iot-apps",
        "id": 101081795,
        "node_id": "O_kgDOBgZiww",
        "url": "https://api.github.com/orgs/cw-iot-apps",
        "repos_url": "https://api.github.com/orgs/cw-iot-apps/repos",
        "events_url": "https://api.github.com/orgs/cw-iot-apps/events",
        "hooks_url": "https://api.github.com/orgs/cw-iot-apps/hooks",
        "issues_url": "https://api.github.com/orgs/cw-iot-apps/issues",
        "members_url": "https://api.github.com/orgs/cw-iot-apps/members{/member}",
        "public_members_url": "https://api.github.com/orgs/cw-iot-apps/public_members{/member}",
        "avatar_url": "https://avatars.githubusercontent.com/u/101081795?v=4",
        "description": null
    }
]
""";
