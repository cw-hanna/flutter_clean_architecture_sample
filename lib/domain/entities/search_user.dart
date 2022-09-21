import 'package:equatable/equatable.dart';

class SearchUser extends Equatable {
  final String? login;
  final String? avatar_url;
  final String? html_url;
  final String? name;
  final int? public_repos;

  const SearchUser({
    this.login,
    this.avatar_url,
    this.html_url,
    this.name,
    this.public_repos,
  });

  @override
  List<Object?> get props {
    return [login, avatar_url, html_url, name, public_repos];
  }
}
