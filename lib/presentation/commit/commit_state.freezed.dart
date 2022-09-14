// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'commit_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommitState _$CommitStateFromJson(Map<String, dynamic> json) {
  return _CommitState.fromJson(json);
}

/// @nodoc
class _$CommitStateTearOff {
  const _$CommitStateTearOff();

  _CommitState call(List<Commit> commits, bool isLoading) {
    return _CommitState(
      commits,
      isLoading,
    );
  }

  CommitState fromJson(Map<String, Object?> json) {
    return CommitState.fromJson(json);
  }
}

/// @nodoc
const $CommitState = _$CommitStateTearOff();

/// @nodoc
mixin _$CommitState {
  List<Commit> get commits => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommitStateCopyWith<CommitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommitStateCopyWith<$Res> {
  factory $CommitStateCopyWith(
          CommitState value, $Res Function(CommitState) then) =
      _$CommitStateCopyWithImpl<$Res>;
  $Res call({List<Commit> commits, bool isLoading});
}

/// @nodoc
class _$CommitStateCopyWithImpl<$Res> implements $CommitStateCopyWith<$Res> {
  _$CommitStateCopyWithImpl(this._value, this._then);

  final CommitState _value;
  // ignore: unused_field
  final $Res Function(CommitState) _then;

  @override
  $Res call({
    Object? commits = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      commits: commits == freezed
          ? _value.commits
          : commits // ignore: cast_nullable_to_non_nullable
              as List<Commit>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$CommitStateCopyWith<$Res>
    implements $CommitStateCopyWith<$Res> {
  factory _$CommitStateCopyWith(
          _CommitState value, $Res Function(_CommitState) then) =
      __$CommitStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Commit> commits, bool isLoading});
}

/// @nodoc
class __$CommitStateCopyWithImpl<$Res> extends _$CommitStateCopyWithImpl<$Res>
    implements _$CommitStateCopyWith<$Res> {
  __$CommitStateCopyWithImpl(
      _CommitState _value, $Res Function(_CommitState) _then)
      : super(_value, (v) => _then(v as _CommitState));

  @override
  _CommitState get _value => super._value as _CommitState;

  @override
  $Res call({
    Object? commits = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_CommitState(
      commits == freezed
          ? _value.commits
          : commits // ignore: cast_nullable_to_non_nullable
              as List<Commit>,
      isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommitState implements _CommitState {
  _$_CommitState(this.commits, this.isLoading);

  factory _$_CommitState.fromJson(Map<String, dynamic> json) =>
      _$$_CommitStateFromJson(json);

  @override
  final List<Commit> commits;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'CommitState(commits: $commits, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CommitState &&
            const DeepCollectionEquality().equals(other.commits, commits) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(commits),
      const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  _$CommitStateCopyWith<_CommitState> get copyWith =>
      __$CommitStateCopyWithImpl<_CommitState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommitStateToJson(this);
  }
}

abstract class _CommitState implements CommitState {
  factory _CommitState(List<Commit> commits, bool isLoading) = _$_CommitState;

  factory _CommitState.fromJson(Map<String, dynamic> json) =
      _$_CommitState.fromJson;

  @override
  List<Commit> get commits;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$CommitStateCopyWith<_CommitState> get copyWith =>
      throw _privateConstructorUsedError;
}
