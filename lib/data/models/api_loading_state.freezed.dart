// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'api_loading_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiLoadingState _$ApiLoadingStateFromJson(Map<String, dynamic> json) {
  return _ApiLoadingState.fromJson(json);
}

/// @nodoc
class _$ApiLoadingStateTearOff {
  const _$ApiLoadingStateTearOff();

  _ApiLoadingState call(bool isLoading) {
    return _ApiLoadingState(
      isLoading,
    );
  }

  ApiLoadingState fromJson(Map<String, Object?> json) {
    return ApiLoadingState.fromJson(json);
  }
}

/// @nodoc
const $ApiLoadingState = _$ApiLoadingStateTearOff();

/// @nodoc
mixin _$ApiLoadingState {
  bool get isLoading => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiLoadingStateCopyWith<ApiLoadingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiLoadingStateCopyWith<$Res> {
  factory $ApiLoadingStateCopyWith(
          ApiLoadingState value, $Res Function(ApiLoadingState) then) =
      _$ApiLoadingStateCopyWithImpl<$Res>;
  $Res call({bool isLoading});
}

/// @nodoc
class _$ApiLoadingStateCopyWithImpl<$Res>
    implements $ApiLoadingStateCopyWith<$Res> {
  _$ApiLoadingStateCopyWithImpl(this._value, this._then);

  final ApiLoadingState _value;
  // ignore: unused_field
  final $Res Function(ApiLoadingState) _then;

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
abstract class _$ApiLoadingStateCopyWith<$Res>
    implements $ApiLoadingStateCopyWith<$Res> {
  factory _$ApiLoadingStateCopyWith(
          _ApiLoadingState value, $Res Function(_ApiLoadingState) then) =
      __$ApiLoadingStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading});
}

/// @nodoc
class __$ApiLoadingStateCopyWithImpl<$Res>
    extends _$ApiLoadingStateCopyWithImpl<$Res>
    implements _$ApiLoadingStateCopyWith<$Res> {
  __$ApiLoadingStateCopyWithImpl(
      _ApiLoadingState _value, $Res Function(_ApiLoadingState) _then)
      : super(_value, (v) => _then(v as _ApiLoadingState));

  @override
  _ApiLoadingState get _value => super._value as _ApiLoadingState;

  @override
  $Res call({
    Object? isLoading = freezed,
  }) {
    return _then(_ApiLoadingState(
      isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiLoadingState implements _ApiLoadingState {
  _$_ApiLoadingState(this.isLoading);

  factory _$_ApiLoadingState.fromJson(Map<String, dynamic> json) =>
      _$$_ApiLoadingStateFromJson(json);

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'ApiLoadingState(isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ApiLoadingState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  _$ApiLoadingStateCopyWith<_ApiLoadingState> get copyWith =>
      __$ApiLoadingStateCopyWithImpl<_ApiLoadingState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiLoadingStateToJson(this);
  }
}

abstract class _ApiLoadingState implements ApiLoadingState {
  factory _ApiLoadingState(bool isLoading) = _$_ApiLoadingState;

  factory _ApiLoadingState.fromJson(Map<String, dynamic> json) =
      _$_ApiLoadingState.fromJson;

  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$ApiLoadingStateCopyWith<_ApiLoadingState> get copyWith =>
      throw _privateConstructorUsedError;
}
