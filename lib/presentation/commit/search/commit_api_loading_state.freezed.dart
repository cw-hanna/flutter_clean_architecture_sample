// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'commit_api_loading_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommitApiLoadingState _$CommitApiLoadingStateFromJson(
    Map<String, dynamic> json) {
  return _CommitApiLoadingState.fromJson(json);
}

/// @nodoc
class _$CommitApiLoadingStateTearOff {
  const _$CommitApiLoadingStateTearOff();

  _CommitApiLoadingState call(bool isLoading) {
    return _CommitApiLoadingState(
      isLoading,
    );
  }

  CommitApiLoadingState fromJson(Map<String, Object?> json) {
    return CommitApiLoadingState.fromJson(json);
  }
}

/// @nodoc
const $CommitApiLoadingState = _$CommitApiLoadingStateTearOff();

/// @nodoc
mixin _$CommitApiLoadingState {
  bool get isLoading => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommitApiLoadingStateCopyWith<CommitApiLoadingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommitApiLoadingStateCopyWith<$Res> {
  factory $CommitApiLoadingStateCopyWith(CommitApiLoadingState value,
          $Res Function(CommitApiLoadingState) then) =
      _$CommitApiLoadingStateCopyWithImpl<$Res>;
  $Res call({bool isLoading});
}

/// @nodoc
class _$CommitApiLoadingStateCopyWithImpl<$Res>
    implements $CommitApiLoadingStateCopyWith<$Res> {
  _$CommitApiLoadingStateCopyWithImpl(this._value, this._then);

  final CommitApiLoadingState _value;
  // ignore: unused_field
  final $Res Function(CommitApiLoadingState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$CommitApiLoadingStateCopyWith<$Res>
    implements $CommitApiLoadingStateCopyWith<$Res> {
  factory _$CommitApiLoadingStateCopyWith(_CommitApiLoadingState value,
          $Res Function(_CommitApiLoadingState) then) =
      __$CommitApiLoadingStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading});
}

/// @nodoc
class __$CommitApiLoadingStateCopyWithImpl<$Res>
    extends _$CommitApiLoadingStateCopyWithImpl<$Res>
    implements _$CommitApiLoadingStateCopyWith<$Res> {
  __$CommitApiLoadingStateCopyWithImpl(_CommitApiLoadingState _value,
      $Res Function(_CommitApiLoadingState) _then)
      : super(_value, (v) => _then(v as _CommitApiLoadingState));

  @override
  _CommitApiLoadingState get _value => super._value as _CommitApiLoadingState;

  @override
  $Res call({
    Object? isLoading = freezed,
  }) {
    return _then(_CommitApiLoadingState(
      isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommitApiLoadingState implements _CommitApiLoadingState {
  _$_CommitApiLoadingState(this.isLoading);

  factory _$_CommitApiLoadingState.fromJson(Map<String, dynamic> json) =>
      _$$_CommitApiLoadingStateFromJson(json);

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'CommitApiLoadingState(isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CommitApiLoadingState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  _$CommitApiLoadingStateCopyWith<_CommitApiLoadingState> get copyWith =>
      __$CommitApiLoadingStateCopyWithImpl<_CommitApiLoadingState>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommitApiLoadingStateToJson(this);
  }
}

abstract class _CommitApiLoadingState implements CommitApiLoadingState {
  factory _CommitApiLoadingState(bool isLoading) = _$_CommitApiLoadingState;

  factory _CommitApiLoadingState.fromJson(Map<String, dynamic> json) =
      _$_CommitApiLoadingState.fromJson;

  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$CommitApiLoadingStateCopyWith<_CommitApiLoadingState> get copyWith =>
      throw _privateConstructorUsedError;
}
