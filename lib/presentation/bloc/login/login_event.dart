part of 'login_bloc.dart';

abstract class LoginEvent {
  const LoginEvent();
}

class LoginRequested extends LoginEvent {
  final String id;
  final String pwd;

  const LoginRequested({required this.id, required this.pwd});
}

class LogoutRequested extends LoginEvent {
  const LogoutRequested();
}
