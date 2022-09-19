import 'package:equatable/equatable.dart';

class OrgDetail extends Equatable {
  final String? name;
  final String? html_url;
  final String? description;
  final String? created_at;

  const OrgDetail({
    this.name,
    this.html_url,
    this.description,
    this.created_at,
  });

  @override
  List<Object?> get props {
    return [name, html_url, description, created_at];
  }
}
