import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_search/domain/entities/search_repo.dart';

part 'search_repo_model.freezed.dart';
part 'search_repo_model.g.dart';

@freezed
class SearchRepoModel extends SearchRepo with _$SearchRepoModel {
  factory SearchRepoModel({
    required String? name,
    required String? html_url,
    required String? description,
    required String? language,
  }) = _SearchRepoModel;

  factory SearchRepoModel.fromJson(Map<String, dynamic> json) =>
      _$SearchRepoModelFromJson(json);
}
