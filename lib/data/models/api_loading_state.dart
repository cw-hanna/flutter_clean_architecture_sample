import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_loading_state.freezed.dart';

part 'api_loading_state.g.dart';

///Api호출 로딩상태
@freezed
class ApiLoadingState with _$ApiLoadingState {
  factory ApiLoadingState(
    bool isLoading,
  ) = _ApiLoadingState;

  factory ApiLoadingState.fromJson(Map<String, dynamic> json) =>
      _$ApiLoadingStateFromJson(json);
}
