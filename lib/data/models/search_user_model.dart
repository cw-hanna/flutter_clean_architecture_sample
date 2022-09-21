import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_search/domain/entities/search_user.dart';

part 'search_user_model.freezed.dart';
part 'search_user_model.g.dart';

@freezed
class SearchUserModel extends SearchUser with _$SearchUserModel {
  factory SearchUserModel({
    required String? login,
    required String? name,
    required String? avatar_url,
    required String? html_url,
    required int? public_repos,
  }) = _SearchUserModel;

  factory SearchUserModel.fromJson(Map<String, dynamic> json) =>
      _$SearchUserModelFromJson(json);
}
