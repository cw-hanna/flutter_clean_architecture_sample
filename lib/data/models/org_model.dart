import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_search/domain/entities/org.dart';
import 'package:image_search/domain/entities/user.dart';

part 'org_model.freezed.dart';
part 'org_model.g.dart';

@freezed
class OrgModel extends Org with _$OrgModel {
  factory OrgModel({
    required String? login,
    required String? url,
    required String? repos_url,
    required String? avatar_url,
  }) = _OrgModel;

  factory OrgModel.fromJson(Map<String, dynamic> json) =>
      _$OrgModelFromJson(json);
}


