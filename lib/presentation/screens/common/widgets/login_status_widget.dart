import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_search/config/theme/cw_colors.dart';
import 'package:image_search/presentation/blocs/login/login_bloc.dart';

class LoginStatusWidget extends StatelessWidget {
  const LoginStatusWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
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