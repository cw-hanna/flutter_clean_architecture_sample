import 'package:freezed_annotation/freezed_annotation.dart';

part 'commit_api_loading_state.freezed.dart';

part 'commit_api_loading_state.g.dart';

///Commit Api호출 로딩상태
@freezed
class CommitApiLoadingState with _$CommitApiLoadingState {
  factory CommitApiLoadingState(
    bool isLoading,
  ) = _CommitApiLoadingState;

  factory CommitApiLoadingState.fromJson(Map<String, dynamic> json) =>
      _$CommitApiLoadingStateFromJson(json);
}
