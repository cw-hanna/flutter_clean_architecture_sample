import 'package:flutter/material.dart';
import 'package:image_search/config/theme/cw_colors.dart';
import 'package:image_search/config/theme/font_theme.dart';
import 'package:image_search/core/utils/string_util.dart';
import 'package:image_search/data/models/search_repo_model.dart';
import 'package:image_search/presentation/screens/common/cw_button_widget.dart';
import 'package:image_search/presentation/screens/search/provider/search_repo_provider.dart';
import 'package:image_search/presentation/screens/webview/base_web_view.dart';
import 'package:provider/provider.dart';

class SearchRepoScreen extends StatefulWidget {
  const SearchRepoScreen({Key? key}) : super(key: key);

  @override
  State<SearchRepoScreen> createState() => _SearchRepoScreenState();
}

class _SearchRepoScreenState extends State<SearchRepoScreen> {
  final TextEditingController _rUserNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var _searchRepoProvider = context.watch<SearchRepoProvider>();

    return Column(
      children: [
        Row(
          children: [
            const Text('user name : '),
            SizedBox(
              width: 250,
              height: 50,
              child: TextFormField(
                controller: _rUserNameController,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  hintText: 'User',
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color: CwColors.darkGray,
                  ),
                  filled: true,
                  fillColor: CwColors.gray,
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),

        //검색버튼
        CwButtonWidget(
            btnTxt: '검색',
            onTap: () {
              if (StringUtil.isValidString(_rUserNameController.text)) {
                _searchRepoProvider.fetch(_rUserNameController.text);
              }
            }),

        //repository 리스트
        SizedBox(
          height: 400,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
            children: [..._repoList()],
          ),
        )
      ],
    );
  }

  List<Widget> _repoList() {
    var repoList = <Widget>[];
    var searchRepoProvider = context.read<SearchRepoProvider>();

    searchRepoProvider.searchRepoModel?.forEach((repoModel) {
      repoList.add(_repoCard(repoModel));
      repoList.add(const SizedBox(
        height: 10,
      ));
    });

    return repoList;
  }

  Widget _repoCard(SearchRepoModel repoModel) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => BaseWebView(
                      htmlString: repoModel.html_url,
                    )));
      },
      child: Card(
          color: CwColors.color5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20))),
                child: Image.network(
                  'https://github.githubassets.com/images/icons/emoji/unicode/1f5c3.png?v8',
                  width: MediaQuery.of(context).size.width,
                  height: 180,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 10, 8, 5),
                child: Text('repository name : ' + repoModel.name.toString(),
                    style: CwFont.title2),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 5, 8, 10),
                child: Text(
                  'description : ' + repoModel.description.toString(),
                  style: CwFont.subTitle1,
                ),
              ),
            ],
          )),
    );
  }
}
