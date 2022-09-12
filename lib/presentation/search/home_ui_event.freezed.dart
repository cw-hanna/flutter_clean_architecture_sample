// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_ui_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeUiEventTearOff {
  const _$HomeUiEventTearOff();

  ShowSnackBar<T> showSnackBar<T>(String message) {
    return ShowSnackBar<T>(
      message,
    );
  }
}

/// @nodoc
const $HomeUiEvent = _$HomeUiEventTearOff();

/// @nodoc
mixin _$HomeUiEvent<T> {
  String get message => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) showSnackBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? showSnackBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? showSnackBar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowSnackBar<T> value) showSnackBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowSnackBar<T> value)? showSnackBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowSnackBar<T> value)? showSnackBar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeUiEventCopyWith<T, HomeUiEvent<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeUiEventCopyWith<T, $Res> {
  factory $HomeUiEventCopyWith(
          HomeUiEvent<T> value, $Res Function(HomeUiEvent<T>) then) =
      _$HomeUiEventCopyWithImpl<T, $Res>;
  $Res call({String message});
}

/// @nodoc
class _$HomeUiEventCopyWithImpl<T, $Res>
    implements $HomeUiEventCopyWith<T, $Res> {
  _$HomeUiEventCopyWithImpl(this._value, this._then);

  final HomeUiEvent<T> _value;
  // ignore: unused_field
  final $Res Function(HomeUiEvent<T>) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $ShowSnackBarCopyWith<T, $Res>
    implements $HomeUiEventCopyWith<T, $Res> {
  factory $ShowSnackBarCopyWith(
          ShowSnackBar<T> value, $Res Function(ShowSnackBar<T>) then) =
      _$ShowSnackBarCopyWithImpl<T, $Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class _$ShowSnackBarCopyWithImpl<T, $Res>
    extends _$HomeUiEventCopyWithImpl<T, $Res>
    implements $ShowSnackBarCopyWith<T, $Res> {
  _$ShowSnackBarCopyWithImpl(
      ShowSnackBar<T> _value, $Res Function(ShowSnackBar<T>) _then)
      : super(_value, (v) => _then(v as ShowSnackBar<T>));

  @override
  ShowSnackBar<T> get _value => super._value as ShowSnackBar<T>;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ShowSnackBar<T>(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShowSnackBar<T> implements ShowSnackBar<T> {
  const _$ShowSnackBar(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'HomeUiEvent<$T>.showSnackBar(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShowSnackBar<T> &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $ShowSnackBarCopyWith<T, ShowSnackBar<T>> get copyWith =>
      _$ShowSnackBarCopyWithImpl<T, ShowSnackBar<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) showSnackBar,
  }) {
    return showSnackBar(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? showSnackBar,
  }) {
    return showSnackBar?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? showSnackBar,
    required TResult orElse(),
  }) {
    if (showSnackBar != null) {
      return showSnackBar(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowSnackBar<T> value) showSnackBar,
  }) {
    return showSnackBar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowSnackBar<T> value)? showSnackBar,
  }) {
    return showSnackBar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowSnackBar<T> value)? showSnackBar,
    required TResult orElse(),
  }) {
    if (showSnackBar != null) {
      return showSnackBar(this);
    }
    return orElse();
  }
}

abstract class ShowSnackBar<T> implements HomeUiEvent<T> {
  const factory ShowSnackBar(String message) = _$ShowSnackBar<T>;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  $ShowSnackBarCopyWith<T, ShowSnackBar<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
