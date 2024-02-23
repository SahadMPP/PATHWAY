// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'direction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DirectionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() directionSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? directionSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? directionSelection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_directionSelection value) directionSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_directionSelection value)? directionSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_directionSelection value)? directionSelection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DirectionEventCopyWith<$Res> {
  factory $DirectionEventCopyWith(
          DirectionEvent value, $Res Function(DirectionEvent) then) =
      _$DirectionEventCopyWithImpl<$Res, DirectionEvent>;
}

/// @nodoc
class _$DirectionEventCopyWithImpl<$Res, $Val extends DirectionEvent>
    implements $DirectionEventCopyWith<$Res> {
  _$DirectionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$directionSelectionImplCopyWith<$Res> {
  factory _$$directionSelectionImplCopyWith(_$directionSelectionImpl value,
          $Res Function(_$directionSelectionImpl) then) =
      __$$directionSelectionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$directionSelectionImplCopyWithImpl<$Res>
    extends _$DirectionEventCopyWithImpl<$Res, _$directionSelectionImpl>
    implements _$$directionSelectionImplCopyWith<$Res> {
  __$$directionSelectionImplCopyWithImpl(_$directionSelectionImpl _value,
      $Res Function(_$directionSelectionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$directionSelectionImpl implements _directionSelection {
  const _$directionSelectionImpl();

  @override
  String toString() {
    return 'DirectionEvent.directionSelection()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$directionSelectionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() directionSelection,
  }) {
    return directionSelection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? directionSelection,
  }) {
    return directionSelection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? directionSelection,
    required TResult orElse(),
  }) {
    if (directionSelection != null) {
      return directionSelection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_directionSelection value) directionSelection,
  }) {
    return directionSelection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_directionSelection value)? directionSelection,
  }) {
    return directionSelection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_directionSelection value)? directionSelection,
    required TResult orElse(),
  }) {
    if (directionSelection != null) {
      return directionSelection(this);
    }
    return orElse();
  }
}

abstract class _directionSelection implements DirectionEvent {
  const factory _directionSelection() = _$directionSelectionImpl;
}

/// @nodoc
mixin _$DirectionState {
  bool get directionValue => throw _privateConstructorUsedError;
  String get directionText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DirectionStateCopyWith<DirectionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DirectionStateCopyWith<$Res> {
  factory $DirectionStateCopyWith(
          DirectionState value, $Res Function(DirectionState) then) =
      _$DirectionStateCopyWithImpl<$Res, DirectionState>;
  @useResult
  $Res call({bool directionValue, String directionText});
}

/// @nodoc
class _$DirectionStateCopyWithImpl<$Res, $Val extends DirectionState>
    implements $DirectionStateCopyWith<$Res> {
  _$DirectionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? directionValue = null,
    Object? directionText = null,
  }) {
    return _then(_value.copyWith(
      directionValue: null == directionValue
          ? _value.directionValue
          : directionValue // ignore: cast_nullable_to_non_nullable
              as bool,
      directionText: null == directionText
          ? _value.directionText
          : directionText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DirectionStateImplCopyWith<$Res>
    implements $DirectionStateCopyWith<$Res> {
  factory _$$DirectionStateImplCopyWith(_$DirectionStateImpl value,
          $Res Function(_$DirectionStateImpl) then) =
      __$$DirectionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool directionValue, String directionText});
}

/// @nodoc
class __$$DirectionStateImplCopyWithImpl<$Res>
    extends _$DirectionStateCopyWithImpl<$Res, _$DirectionStateImpl>
    implements _$$DirectionStateImplCopyWith<$Res> {
  __$$DirectionStateImplCopyWithImpl(
      _$DirectionStateImpl _value, $Res Function(_$DirectionStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? directionValue = null,
    Object? directionText = null,
  }) {
    return _then(_$DirectionStateImpl(
      directionValue: null == directionValue
          ? _value.directionValue
          : directionValue // ignore: cast_nullable_to_non_nullable
              as bool,
      directionText: null == directionText
          ? _value.directionText
          : directionText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DirectionStateImpl implements _DirectionState {
  const _$DirectionStateImpl(
      {required this.directionValue, required this.directionText});

  @override
  final bool directionValue;
  @override
  final String directionText;

  @override
  String toString() {
    return 'DirectionState(directionValue: $directionValue, directionText: $directionText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DirectionStateImpl &&
            (identical(other.directionValue, directionValue) ||
                other.directionValue == directionValue) &&
            (identical(other.directionText, directionText) ||
                other.directionText == directionText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, directionValue, directionText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DirectionStateImplCopyWith<_$DirectionStateImpl> get copyWith =>
      __$$DirectionStateImplCopyWithImpl<_$DirectionStateImpl>(
          this, _$identity);
}

abstract class _DirectionState implements DirectionState {
  const factory _DirectionState(
      {required final bool directionValue,
      required final String directionText}) = _$DirectionStateImpl;

  @override
  bool get directionValue;
  @override
  String get directionText;
  @override
  @JsonKey(ignore: true)
  _$$DirectionStateImplCopyWith<_$DirectionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
