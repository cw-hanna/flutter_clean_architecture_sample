import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_search/config/theme/cw_colors.dart';
import 'package:image_search/presentation/blocs/login/login_bloc.dart';
import 'package:image_search/presentation/screens/common/widgets/login_status_widget.dart';
import 'package:image_search/presentation/screens/my/provider/my_org_provider.dart';
import 'package:image_search/presentation/screens/my/widgets/org_expand_widget.dart';

class MyOrgScreen extends StatefulWidget {
  const MyOrgScreen({Key? key}) : super(key: key);

  @override
  State<MyOrgScreen> createState() => _MyOrgScreenState();
}

class _MyOrgScreenState extends State<MyOrgScreen> {
  final _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    final orgSearchProvider = context.watch<MyOrgProvider>();

    return Scaffold(
      resizeToAvoidBottomInset: false, 
      body: Column(
        children: [
          //커밋api호출 버튼, 로그인상태 아이콘
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                getCommitListButton(orgSearchProvider),
              ],
            ),
          ),

          //org기록 결과 ListView
          orgSearchProvider.state.isLoading
              ? const CircularProgressIndicator()
              : Expanded(
                  child: ListView.builder(
                    controller: _controller,
                    padding: const EdgeInsets.all(16.0),
                    itemCount: orgSearchProvider.orgs.length,
                    itemBuilder: (context, index) {
                      final org = orgSearchProvider.orgs[index];
                      return OrgExpandWidget(
                        org: org,
                      );
                    },
                  ),
                )
        ],
      ),
    );
  }

  ///org api호출 버튼
  Widget getCommitListButton(MyOrgProvider orgProvider) {
    var loginState = BlocProvider.of<LoginBloc>(context).state;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            //LoginBloc으로 로그인 상태 체크
            if (loginState is LoginSuccess) {
              orgProvider.fetch();
            } else {
              const snackBar = SnackBar(
                content: Text('로그인 먼저 해주세요!'),
                backgroundColor: Colors.red,
              );
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
            child: const Center(child: Text('나의 organization 불러오기')),
          ),
        ),
        const LoginStatusWidget()
      ],
    );
  }

  //로그인상태에 따른 아이콘
  Widget loginStateIcon() {
    return BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
      if (state is LoginSuccess) {
        return TextButton.icon(
            onPressed: () {},
            icon: const Icon(
              Icons.emoji_emotions,
              color: CwColors.color2,
            ),
            label: const Text(
              '로그인완료',
              style: TextStyle(
                  color: CwColors.color2, fontWeight: FontWeight.bold),
            ));
      }
      return TextButton.icon(
          onPressed: () {},
          icon: const Icon(
            Icons.sentiment_very_dissatisfied,
            color: Colors.black87,
          ),
          label: const Text(
            '로그인 해주세요',
            style: TextStyle(color: Colors.black87),
          ));
    });
  }
}
