// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lession_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LessionListEvent {
  BuildContext get context => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, Lesson lesson)
        updateLession,
    required TResult Function(BuildContext context, String id) deleteLession,
    required TResult Function(BuildContext context) navigatingLessionFrom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, Lesson lesson)? updateLession,
    TResult? Function(BuildContext context, String id)? deleteLession,
    TResult? Function(BuildContext context)? navigatingLessionFrom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, Lesson lesson)? updateLession,
    TResult Function(BuildContext context, String id)? deleteLession,
    TResult Function(BuildContext context)? navigatingLessionFrom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_updateLession value) updateLession,
    required TResult Function(_deleteLession value) deleteLession,
    required TResult Function(_navigatingLessionFrom value)
        navigatingLessionFrom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_updateLession value)? updateLession,
    TResult? Function(_deleteLession value)? deleteLession,
    TResult? Function(_navigatingLessionFrom value)? navigatingLessionFrom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_updateLession value)? updateLession,
    TResult Function(_deleteLession value)? deleteLession,
    TResult Function(_navigatingLessionFrom value)? navigatingLessionFrom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LessionListEventCopyWith<LessionListEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessionListEventCopyWith<$Res> {
  factory $LessionListEventCopyWith(
          LessionListEvent value, $Res Function(LessionListEvent) then) =
      _$LessionListEventCopyWithImpl<$Res, LessionListEvent>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class _$LessionListEventCopyWithImpl<$Res, $Val extends LessionListEvent>
    implements $LessionListEventCopyWith<$Res> {
  _$LessionListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_value.copyWith(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$updateLessionImplCopyWith<$Res>
    implements $LessionListEventCopyWith<$Res> {
  factory _$$updateLessionImplCopyWith(
          _$updateLessionImpl value, $Res Function(_$updateLessionImpl) then) =
      __$$updateLessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BuildContext context, Lesson lesson});
}

/// @nodoc
class __$$updateLessionImplCopyWithImpl<$Res>
    extends _$LessionListEventCopyWithImpl<$Res, _$updateLessionImpl>
    implements _$$updateLessionImplCopyWith<$Res> {
  __$$updateLessionImplCopyWithImpl(
      _$updateLessionImpl _value, $Res Function(_$updateLessionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? lesson = null,
  }) {
    return _then(_$updateLessionImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      lesson: null == lesson
          ? _value.lesson
          : lesson // ignore: cast_nullable_to_non_nullable
              as Lesson,
    ));
  }
}

/// @nodoc

class _$updateLessionImpl implements _updateLession {
  const _$updateLessionImpl({required this.context, required this.lesson});

  @override
  final BuildContext context;
  @override
  final Lesson lesson;

  @override
  String toString() {
    return 'LessionListEvent.updateLession(context: $context, lesson: $lesson)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$updateLessionImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.lesson, lesson) || other.lesson == lesson));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, lesson);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$updateLessionImplCopyWith<_$updateLessionImpl> get copyWith =>
      __$$updateLessionImplCopyWithImpl<_$updateLessionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, Lesson lesson)
        updateLession,
    required TResult Function(BuildContext context, String id) deleteLession,
    required TResult Function(BuildContext context) navigatingLessionFrom,
  }) {
    return updateLession(context, lesson);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, Lesson lesson)? updateLession,
    TResult? Function(BuildContext context, String id)? deleteLession,
    TResult? Function(BuildContext context)? navigatingLessionFrom,
  }) {
    return updateLession?.call(context, lesson);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, Lesson lesson)? updateLession,
    TResult Function(BuildContext context, String id)? deleteLession,
    TResult Function(BuildContext context)? navigatingLessionFrom,
    required TResult orElse(),
  }) {
    if (updateLession != null) {
      return updateLession(context, lesson);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_updateLession value) updateLession,
    required TResult Function(_deleteLession value) deleteLession,
    required TResult Function(_navigatingLessionFrom value)
        navigatingLessionFrom,
  }) {
    return updateLession(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_updateLession value)? updateLession,
    TResult? Function(_deleteLession value)? deleteLession,
    TResult? Function(_navigatingLessionFrom value)? navigatingLessionFrom,
  }) {
    return updateLession?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_updateLession value)? updateLession,
    TResult Function(_deleteLession value)? deleteLession,
    TResult Function(_navigatingLessionFrom value)? navigatingLessionFrom,
    required TResult orElse(),
  }) {
    if (updateLession != null) {
      return updateLession(this);
    }
    return orElse();
  }
}

abstract class _updateLession implements LessionListEvent {
  const factory _updateLession(
      {required final BuildContext context,
      required final Lesson lesson}) = _$updateLessionImpl;

  @override
  BuildContext get context;
  Lesson get lesson;
  @override
  @JsonKey(ignore: true)
  _$$updateLessionImplCopyWith<_$updateLessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$deleteLessionImplCopyWith<$Res>
    implements $LessionListEventCopyWith<$Res> {
  factory _$$deleteLessionImplCopyWith(
          _$deleteLessionImpl value, $Res Function(_$deleteLessionImpl) then) =
      __$$deleteLessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BuildContext context, String id});
}

/// @nodoc
class __$$deleteLessionImplCopyWithImpl<$Res>
    extends _$LessionListEventCopyWithImpl<$Res, _$deleteLessionImpl>
    implements _$$deleteLessionImplCopyWith<$Res> {
  __$$deleteLessionImplCopyWithImpl(
      _$deleteLessionImpl _value, $Res Function(_$deleteLessionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? id = null,
  }) {
    return _then(_$deleteLessionImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$deleteLessionImpl implements _deleteLession {
  const _$deleteLessionImpl({required this.context, required this.id});

  @override
  final BuildContext context;
  @override
  final String id;

  @override
  String toString() {
    return 'LessionListEvent.deleteLession(context: $context, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$deleteLessionImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$deleteLessionImplCopyWith<_$deleteLessionImpl> get copyWith =>
      __$$deleteLessionImplCopyWithImpl<_$deleteLessionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, Lesson lesson)
        updateLession,
    required TResult Function(BuildContext context, String id) deleteLession,
    required TResult Function(BuildContext context) navigatingLessionFrom,
  }) {
    return deleteLession(context, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, Lesson lesson)? updateLession,
    TResult? Function(BuildContext context, String id)? deleteLession,
    TResult? Function(BuildContext context)? navigatingLessionFrom,
  }) {
    return deleteLession?.call(context, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, Lesson lesson)? updateLession,
    TResult Function(BuildContext context, String id)? deleteLession,
    TResult Function(BuildContext context)? navigatingLessionFrom,
    required TResult orElse(),
  }) {
    if (deleteLession != null) {
      return deleteLession(context, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_updateLession value) updateLession,
    required TResult Function(_deleteLession value) deleteLession,
    required TResult Function(_navigatingLessionFrom value)
        navigatingLessionFrom,
  }) {
    return deleteLession(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_updateLession value)? updateLession,
    TResult? Function(_deleteLession value)? deleteLession,
    TResult? Function(_navigatingLessionFrom value)? navigatingLessionFrom,
  }) {
    return deleteLession?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_updateLession value)? updateLession,
    TResult Function(_deleteLession value)? deleteLession,
    TResult Function(_navigatingLessionFrom value)? navigatingLessionFrom,
    required TResult orElse(),
  }) {
    if (deleteLession != null) {
      return deleteLession(this);
    }
    return orElse();
  }
}

abstract class _deleteLession implements LessionListEvent {
  const factory _deleteLession(
      {required final BuildContext context,
      required final String id}) = _$deleteLessionImpl;

  @override
  BuildContext get context;
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$deleteLessionImplCopyWith<_$deleteLessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$navigatingLessionFromImplCopyWith<$Res>
    implements $LessionListEventCopyWith<$Res> {
  factory _$$navigatingLessionFromImplCopyWith(
          _$navigatingLessionFromImpl value,
          $Res Function(_$navigatingLessionFromImpl) then) =
      __$$navigatingLessionFromImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$navigatingLessionFromImplCopyWithImpl<$Res>
    extends _$LessionListEventCopyWithImpl<$Res, _$navigatingLessionFromImpl>
    implements _$$navigatingLessionFromImplCopyWith<$Res> {
  __$$navigatingLessionFromImplCopyWithImpl(_$navigatingLessionFromImpl _value,
      $Res Function(_$navigatingLessionFromImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$navigatingLessionFromImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$navigatingLessionFromImpl implements _navigatingLessionFrom {
  const _$navigatingLessionFromImpl({required this.context});

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'LessionListEvent.navigatingLessionFrom(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$navigatingLessionFromImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$navigatingLessionFromImplCopyWith<_$navigatingLessionFromImpl>
      get copyWith => __$$navigatingLessionFromImplCopyWithImpl<
          _$navigatingLessionFromImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, Lesson lesson)
        updateLession,
    required TResult Function(BuildContext context, String id) deleteLession,
    required TResult Function(BuildContext context) navigatingLessionFrom,
  }) {
    return navigatingLessionFrom(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, Lesson lesson)? updateLession,
    TResult? Function(BuildContext context, String id)? deleteLession,
    TResult? Function(BuildContext context)? navigatingLessionFrom,
  }) {
    return navigatingLessionFrom?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, Lesson lesson)? updateLession,
    TResult Function(BuildContext context, String id)? deleteLession,
    TResult Function(BuildContext context)? navigatingLessionFrom,
    required TResult orElse(),
  }) {
    if (navigatingLessionFrom != null) {
      return navigatingLessionFrom(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_updateLession value) updateLession,
    required TResult Function(_deleteLession value) deleteLession,
    required TResult Function(_navigatingLessionFrom value)
        navigatingLessionFrom,
  }) {
    return navigatingLessionFrom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_updateLession value)? updateLession,
    TResult? Function(_deleteLession value)? deleteLession,
    TResult? Function(_navigatingLessionFrom value)? navigatingLessionFrom,
  }) {
    return navigatingLessionFrom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_updateLession value)? updateLession,
    TResult Function(_deleteLession value)? deleteLession,
    TResult Function(_navigatingLessionFrom value)? navigatingLessionFrom,
    required TResult orElse(),
  }) {
    if (navigatingLessionFrom != null) {
      return navigatingLessionFrom(this);
    }
    return orElse();
  }
}

abstract class _navigatingLessionFrom implements LessionListEvent {
  const factory _navigatingLessionFrom({required final BuildContext context}) =
      _$navigatingLessionFromImpl;

  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$navigatingLessionFromImplCopyWith<_$navigatingLessionFromImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LessionListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessionListStateCopyWith<$Res> {
  factory $LessionListStateCopyWith(
          LessionListState value, $Res Function(LessionListState) then) =
      _$LessionListStateCopyWithImpl<$Res, LessionListState>;
}

/// @nodoc
class _$LessionListStateCopyWithImpl<$Res, $Val extends LessionListState>
    implements $LessionListStateCopyWith<$Res> {
  _$LessionListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$LessionListStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'LessionListState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LessionListState {
  const factory _Initial() = _$InitialImpl;
}
