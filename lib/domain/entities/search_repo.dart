import 'package:equatable/equatable.dart';

class SearchRepo extends Equatable {
  final String? name;
  final String? html_url;
  final String? description;
  final String? language;

  const SearchRepo({
    this.name,
    this.html_url,
    this.description,
    this.language,
  });

  @override
  List<Object?> get props {
    return [name, html_url, description, language];
  }
}
