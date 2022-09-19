import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_search/domain/entities/org.dart';
import 'package:image_search/domain/entities/org_detail.dart';
import 'package:image_search/domain/entities/user.dart';

part 'org_detail_model.freezed.dart';
part 'org_detail_model.g.dart';

@freezed
class OrgDetailModel extends OrgDetail with _$OrgDetailModel {
  factory OrgDetailModel({
    required String? name,
    required String? html_url,
    required String? description,
    required String? created_at,
  }) = _OrgDetailModel;

  factory OrgDetailModel.fromJson(Map<String, dynamic> json) =>
      _$OrgDetailModelFromJson(json);
}


