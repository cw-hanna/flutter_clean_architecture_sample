import 'package:equatable/equatable.dart';

class Org extends Equatable {
  final String? login;
  final String? url;
  final String? repos_url;
  final String? avatar_url;

  const Org({
    this.login,
    this.url,
    this.repos_url,
    this.avatar_url,
  });

  @override
  List<Object?> get props {
    return [login, url, repos_url, avatar_url];
  }
}
