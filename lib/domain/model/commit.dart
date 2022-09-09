import 'package:image_search/domain/model/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'commit.freezed.dart';
part 'commit.g.dart';

@freezed
class Commit with _$Commit {
  factory Commit({
    required User? author,
    required User? committer,
    required String? message,
    required String? url,
  }) = _Commit;

  factory Commit.fromJson(Map<String, dynamic> json) => _$CommitFromJson(json);
}
