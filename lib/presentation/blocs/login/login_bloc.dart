import 'package:bloc/bloc.dart';
import 'package:image_search/core/utils/pref_util.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginInitial()) {
    on<LoginRequested>((event, emit) async {
      saveLoginPrefs(event);
      var result = checkLogin(event.id, event.pwd);

      if (result) {
        emit(const LoginSuccess());
      } else {
        emit(const LoginFail());
      }
    });

    on<LogoutRequested>((event, emit) {
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
void saveLoginPrefs(LoginRequested event) {
  PrefUtil.setString('PREF_ID', event.id);
  PrefUtil.setString('PREF_PWD', event.pwd);
  PrefUtil.setString(
      'PREF_TOKEN', 'Bearer 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');
}
