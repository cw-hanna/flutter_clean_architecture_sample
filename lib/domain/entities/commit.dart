import 'package:equatable/equatable.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_search/domain/entities/user.dart';

class Commit extends Equatable {
  final User? author;
  final User? committer;
  final String? message;
  final String? url;

  const Commit({
    this.author,
    this.committer,
    this.message,
    this.url,
  });

  @override
  List<Object?> get props {
    return [author, committer, message, url];
  }
}
