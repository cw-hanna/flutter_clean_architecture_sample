import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_search/config/theme/cw_colors.dart';
import 'package:image_search/presentation/blocs/login/login_bloc.dart';
import 'package:image_search/presentation/screens/commit/provider/commit_search_provider.dart';
import 'package:image_search/presentation/widgets/commit_widget.dart';


import 'package:provider/provider.dart';

import 'dart:math';

///SearchScreen
///커밋기록 API호출 및 리스트 노출
class CommitSearchScreen extends StatefulWidget {
  const CommitSearchScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<CommitSearchScreen> createState() => _CommitSearchScreenState();
}

class _CommitSearchScreenState extends State<CommitSearchScreen> {
  final _controller = ScrollController();
  StreamSubscription? _subscription;

  @override
  void initState() {
    super.initState();

    //최하단 스크롤시 리스트뷰 아이템 추가
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      var commitSearchProvider =
          Provider.of<CommitSearchProvider>(context, listen: false);

      _controller.addListener(() async {
        if (_controller.position.maxScrollExtent == _controller.offset) {
          var randomNum = Random().nextInt(10);
          //api결과 랜덤3개 추가
          var randomList =
              commitSearchProvider.commits.getRange(randomNum, randomNum + 3);

          //2초 딜레이
          await Future.delayed(const Duration(seconds: 2));

          commitSearchProvider.addCommitList(randomList.toList());
        }
      });
    });
  }

  @override
  void dispose() {
    _subscription?.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final commitSearchProvider = context.watch<CommitSearchProvider>();

    return Scaffold(
      body: Column(
        children: [
          //커밋api호출 버튼, 로그인상태 아이콘
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                getCommitListButton(commitSearchProvider),
                loginStateIcon(),
              ],
            ),
          ),

          //커밋기록 결과 ListView
          commitSearchProvider.state.isLoading
              ? const CircularProgressIndicator()
              : Expanded(
                  child: ListView.builder(
                    controller: _controller,
                    padding: const EdgeInsets.all(16.0),
                    itemCount: commitSearchProvider.commits.length + 1,
                    itemBuilder: (context, index) {
                      if (commitSearchProvider.commits.isEmpty) {
                        return const SizedBox();
                      } else if (index < commitSearchProvider.commits.length) {
                        final commit = commitSearchProvider.commits[index];
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
      ),
    );
  }

  ///커밋api호출 버튼
  Widget getCommitListButton(CommitSearchProvider commitProvider) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          //LoginBloc으로 로그인 상태 체크
          var loginState = BlocProvider.of<LoginBloc>(context).state;
          if (loginState is LoginSuccess) {
            commitProvider.fetch();
          } else {
            const snackBar = SnackBar(content: Text('로그인 먼저 해주세요!'));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
        },
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
              color: CwColors.color2),
          child: const Center(child: Text('커밋기록 불러오기')),
        ),
      ),
    );
  }

  //로그인상태에 따른 아이콘
  Widget loginStateIcon() {
    return BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
      if (state is LoginSuccess) {
        return TextButton.icon(
            onPressed: () {},
            icon: const Icon(
              Icons.person,
              color: CwColors.color2,
            ),
            label: const Text('로그인됨'));
      }
      return TextButton.icon(
          onPressed: () {},
          icon: const Icon(
            Icons.person,
            color: CwColors.gray,
          ),
          label: const Text('로그아웃됨'));
    });
  }
}
