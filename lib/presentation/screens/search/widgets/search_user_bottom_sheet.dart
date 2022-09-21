import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_search/config/theme/font_theme.dart';
import 'package:image_search/presentation/screens/common/cw_button_widget.dart';
import 'package:image_search/presentation/screens/search/provider/search_user_provider.dart';
import 'package:image_search/presentation/screens/webview/base_web_view.dart';
import 'package:provider/provider.dart';

class SearchUserBottomSheet extends StatelessWidget {
  const SearchUserBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _searchUserProvider = context.watch<SearchUserProvider>();

    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Image.network(
              _searchUserProvider.searchUserModel!.avatar_url.toString(),
              width: 120,
              height: 120,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          _userInfo(_searchUserProvider, '닉네임 : ',
              _searchUserProvider.searchUserModel!.login.toString()),
          _userInfo(_searchUserProvider, '이름 : ',
              _searchUserProvider.searchUserModel!.name.toString()),
          _userInfo(_searchUserProvider, '레포지토리 수 : ',
              _searchUserProvider.searchUserModel!.public_repos.toString()),
          const SizedBox(
            height: 20,
          ),
          CwButtonWidget(
              btnTxt: '상세보기',
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BaseWebView(
                              htmlString:
                                  _searchUserProvider.searchUserModel!.html_url,
                            )));
              })
        ],
      ),
    );
  }

  Widget _userInfo(
      SearchUserProvider searchUserProvider, String txt, String value) {
    return Text(
      txt + value,
      style: CwFont.title1,
    );
  }
}
