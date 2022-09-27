import 'package:bloc/bloc.dart';
import 'package:image_search/core/utils/pref_util.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginInitial()) {
    on<LoginRequested>((event, emit) async {
      await saveLoginPrefs(event);
      var result = checkLogin(event.id, event.pwd);

      if (result) {
        emit(const LoginSuccess());
      } else {
        emit(const LoginFail());
      }
    });

    on<LogoutRequested>((event, emit) async {
      await clearoginPrefs();
      emit(const LogoutSuccess());
    });
  }
}

bool checkLogin(String id, String pwd) {
  bool loginResult = false;
  if ('test' == id && '1' == pwd) {
    loginResult = true;
  } else {
    loginResult = false;
  }
  return loginResult;
}

//로그인 preference 저장
Future<void> saveLoginPrefs(LoginRequested event) async {
  await PrefUtil.setString('PREF_ID', event.id);
  await PrefUtil.setString('PREF_PWD', event.pwd);
  await PrefUtil.setString(
      'PREF_TOKEN', 'Bearer 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');
}

//로그아웃시 preference 삭제
Future<void> clearoginPrefs() async {
  await PrefUtil.setString('PREF_ID', '');
  await PrefUtil.setString('PREF_PWD', '');
  await PrefUtil.setString('PREF_TOKEN', '');
}
