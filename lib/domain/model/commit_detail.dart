import 'package:image_search/domain/model/commit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'commit_detail.freezed.dart';
part 'commit_detail.g.dart';

@freezed
class CommitDetail with _$CommitDetail {
  factory CommitDetail({
    required Commit? commit,
    required String? url,
    required String? html_url,
  }) = _CommitDetail;

  factory CommitDetail.fromJson(Map<String, dynamic> json) => _$CommitDetailFromJson(json);
}
