import 'package:image_search/data/models/user_model.dart';
import 'package:image_search/domain/model/commit.dart';
import 'package:image_search/domain/model/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'commit_model.freezed.dart';
part 'commit_model.g.dart';

@freezed
class CommitModel extends Commit with _$CommitModel {
  factory CommitModel({
    required UserModel? author,
    required UserModel? committer,
    required String? message,
    required String? url,
  }) = _CommitModel;

  factory CommitModel.fromJson(Map<String, dynamic> json) =>
      _$CommitModelFromJson(json);
}
