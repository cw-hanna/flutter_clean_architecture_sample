import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_search/config/theme/font_theme.dart';
import 'package:image_search/core/resources/prefKeys.dart';
import 'package:image_search/core/utils/pref_util.dart';
import 'package:image_search/presentation/blocs/login/login_bloc.dart';
import 'package:image_search/config/theme/cw_colors.dart';

///LoginScreen
///LoginBloc의 state따라서 화면노출
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController idController = TextEditingController();
  final TextEditingController pwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        if (state is LoginSuccess) {
          return logoutRequestScreen(context);
        }
        return loginRequestScreen(idController, pwdController, context);
      },
    );
  }
}

//로그인 요청화면(로그아웃된 상태)
Widget loginRequestScreen(TextEditingController idController,
    TextEditingController pwdController, BuildContext context) {
  return Scaffold(
    resizeToAvoidBottomInset: false,
    body: Container(
      padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
      color: Colors.white,
      child: Column(
        children: [
          TextFormField(
            controller: idController,
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              hintText: 'ID',
              hintStyle: TextStyle(
                fontSize: 20,
                color: CwColors.darkGray,
              ),
              filled: true,
              fillColor: CwColors.gray,
              border: InputBorder.none,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: pwdController,
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
                hintText: 'PASSWORD',
                hintStyle: TextStyle(
                  fontSize: 20,
                  color: CwColors.darkGray,
                ),
                filled: true,
                fillColor: CwColors.gray,
                border: InputBorder.none),
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              BlocProvider.of<LoginBloc>(context).add(LoginRequested(
                  id: idController.text, pwd: pwdController.text));
            },
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  color: CwColors.color2),
              child: const Center(
                child: Text('로그인'),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

//로그아웃 요청화면(로그인된 상태)
Widget logoutRequestScreen(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('[SharedPreference 저장된 값]', style: CwFont.title1),
        const SizedBox(
          height: 10,
        ),
        Text(
          'ID : ' + PrefUtil.getString(PrefKeys.PREF_ID),
          style: CwFont.title2,
        ),
        const SizedBox(
          height: 10,
        ),
        Text('PWD : ' + PrefUtil.getString(PrefKeys.PREF_PWD),
            style: CwFont.title2),
        const SizedBox(
          height: 10,
        ),
        Text('TOKEN : ' + PrefUtil.getString(PrefKeys.PREF_TOKEN),
            style: CwFont.title2),
        const SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: () {
            BlocProvider.of<LoginBloc>(context).add(const LogoutRequested());
          },
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
                color: CwColors.color2),
            child: const Center(
              child: Text('로그아웃'),
            ),
          ),
        ),
      ],
    ),
  );
}
