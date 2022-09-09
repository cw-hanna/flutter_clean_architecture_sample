import 'package:image_search/domain/model/commit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'commit_state.freezed.dart';

part 'commit_state.g.dart';

@freezed
class CommitState with _$CommitState {
  factory CommitState(
    List<Commit> commits,
    bool isLoading,
  ) = _CommitState;

  factory CommitState.fromJson(Map<String, dynamic> json) =>
      _$CommitStateFromJson(json);
}
