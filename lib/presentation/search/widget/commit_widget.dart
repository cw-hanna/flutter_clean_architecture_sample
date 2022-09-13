import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_search/domain/model/commit.dart';
import 'package:image_search/presentation/bloc/login/login_bloc.dart';
import 'package:image_search/presentation/search/commit_detail_screen.dart';
import 'package:image_search/presentation/theme/cw_colors.dart';

class CommitWidget extends StatelessWidget {
  final Commit commit;
  const CommitWidget({Key? key, required this.commit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            //LoginBloc으로 로그인 상태 체크
            var loginState = BlocProvider.of<LoginBloc>(context).state;
            if (loginState is LoginSuccess) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CommitDetailScreen()));
            } else {
              const snackBar = SnackBar(content: Text('로그인 먼저 해주세요!'));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }
          },
          child: Container(
            decoration: BoxDecoration(
              color: CwColors.color5,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('committer : ' + commit.author!.name.toString()),
                Text('message : ' + commit.message.toString()),
                Text('date : ' + commit.author!.date.toString()),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
      ],
    );
  }
}
