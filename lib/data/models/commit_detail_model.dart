import 'package:image_search/data/models/commit_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_search/domain/entities/commit_detail.dart';

part 'commit_detail_model.freezed.dart';
part 'commit_detail_model.g.dart';

@freezed
class CommitDetailModel extends CommitDetail with _$CommitDetailModel {
  factory CommitDetailModel({
    required CommitModel? commit,
    required String? url,
    required String? html_url,
  }) = _CommitDetailModel;

  factory CommitDetailModel.fromJson(Map<String, dynamic> json) => _$CommitDetailModelFromJson(json);
}
