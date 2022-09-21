import 'dart:math';

import 'package:flutter/material.dart';
import 'package:image_search/config/theme/cw_colors.dart';
import 'package:image_search/core/utils/string_util.dart';
import 'package:image_search/presentation/screens/common/cw_button_widget.dart';
import 'package:image_search/presentation/screens/my/widgets/commit_widget.dart';
import 'package:image_search/presentation/screens/search/provider/search_commit_provider.dart';
import 'package:provider/provider.dart';

class SearchCommitScreen extends StatefulWidget {
  const SearchCommitScreen({Key? key}) : super(key: key);

  @override
  State<SearchCommitScreen> createState() => _SearchCommitScreenState();
}

class _SearchCommitScreenState extends State<SearchCommitScreen> {
  final TextEditingController _cUserNameController = TextEditingController();
  final TextEditingController _cRepoNameController = TextEditingController();
  final _controller = ScrollController();

  @override
  void initState() {
    super.initState();

    //최하단 스크롤시 리스트뷰 아이템 추가
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      var searchCommitProvider =
          Provider.of<SearchCommitProvider>(context, listen: false);

      _controller.addListener(() async {
        if (_controller.position.maxScrollExtent == _controller.offset) {
          var randomNum = Random().nextInt(10);
          //api결과 랜덤3개 추가
          var randomList =
              searchCommitProvider.commits.getRange(randomNum, randomNum + 3);

          //2초 딜레이
          await Future.delayed(const Duration(seconds: 2));

          searchCommitProvider.addCommitList(randomList.toList());
        }
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final searchCommitProvider = context.watch<SearchCommitProvider>();

    return Column(
      children: [
        Row(
          children: [
            const Text('user name : '),
            SizedBox(
              width: 250,
              height: 50,
              child: TextFormField(
                controller: _cUserNameController,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  hintText: 'User',
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color: CwColors.dark_gray,
                  ),
                  filled: true,
                  fillColor: CwColors.gray,
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            const Text('repo name : '),
            SizedBox(
              width: 250,
              height: 50,
              child: TextFormField(
                controller: _cRepoNameController,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  hintText: 'Repo',
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color: CwColors.dark_gray,
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
              if (StringUtil.isValidString(_cUserNameController.text) &&
                  StringUtil.isValidString(_cRepoNameController.text)) {
                //커밋기록 결과 ListView
                searchCommitProvider.fetch(
                  _cUserNameController.text,
                  _cRepoNameController.text,
                );
              }
            }),

        searchCommitProvider.state.isLoading
            ? const CircularProgressIndicator()
            : SizedBox(
                height: 400,
                child: ListView.builder(
                  controller: _controller,
                  padding: const EdgeInsets.all(16.0),
                  itemCount: searchCommitProvider.commits.length + 1,
                  itemBuilder: (context, index) {
                    if (searchCommitProvider.commits.isEmpty) {
                      return const SizedBox();
                    } else if (index < searchCommitProvider.commits.length) {
                      final commit = searchCommitProvider.commits[index];
                      return CommitWidget(commit: commit);
                    } else {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  },
                ),
              )
      ],
    );
  }
}
