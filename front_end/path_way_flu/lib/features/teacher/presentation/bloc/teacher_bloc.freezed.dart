// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TeacherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id, Map<dynamic, dynamic> data, BuildContext context)
        updateData,
    required TResult Function() certificatePikerOne,
    required TResult Function() certificatePikerTwo,
    required TResult Function(String level) levelclickEventInAddiTutorial,
    required TResult Function(String subject) subjectClickEventInAddingTutoral,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id, Map<dynamic, dynamic> data, BuildContext context)?
        updateData,
    TResult? Function()? certificatePikerOne,
    TResult? Function()? certificatePikerTwo,
    TResult? Function(String level)? levelclickEventInAddiTutorial,
    TResult? Function(String subject)? subjectClickEventInAddingTutoral,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id, Map<dynamic, dynamic> data, BuildContext context)?
        updateData,
    TResult Function()? certificatePikerOne,
    TResult Function()? certificatePikerTwo,
    TResult Function(String level)? levelclickEventInAddiTutorial,
    TResult Function(String subject)? subjectClickEventInAddingTutoral,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_updateData value) updateData,
    required TResult Function(_certificatePikerOne value) certificatePikerOne,
    required TResult Function(_certificatePikerTwo value) certificatePikerTwo,
    required TResult Function(_levelclickEventInAddiTutorial value)
        levelclickEventInAddiTutorial,
    required TResult Function(_subjectClickEventInAddingTutoral value)
        subjectClickEventInAddingTutoral,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_updateData value)? updateData,
    TResult? Function(_certificatePikerOne value)? certificatePikerOne,
    TResult? Function(_certificatePikerTwo value)? certificatePikerTwo,
    TResult? Function(_levelclickEventInAddiTutorial value)?
        levelclickEventInAddiTutorial,
    TResult? Function(_subjectClickEventInAddingTutoral value)?
        subjectClickEventInAddingTutoral,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_updateData value)? updateData,
    TResult Function(_certificatePikerOne value)? certificatePikerOne,
    TResult Function(_certificatePikerTwo value)? certificatePikerTwo,
    TResult Function(_levelclickEventInAddiTutorial value)?
        levelclickEventInAddiTutorial,
    TResult Function(_subjectClickEventInAddingTutoral value)?
        subjectClickEventInAddingTutoral,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherEventCopyWith<$Res> {
  factory $TeacherEventCopyWith(
          TeacherEvent value, $Res Function(TeacherEvent) then) =
      _$TeacherEventCopyWithImpl<$Res, TeacherEvent>;
}

/// @nodoc
class _$TeacherEventCopyWithImpl<$Res, $Val extends TeacherEvent>
    implements $TeacherEventCopyWith<$Res> {
  _$TeacherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$updateDataImplCopyWith<$Res> {
  factory _$$updateDataImplCopyWith(
          _$updateDataImpl value, $Res Function(_$updateDataImpl) then) =
      __$$updateDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, Map<dynamic, dynamic> data, BuildContext context});
}

/// @nodoc
class __$$updateDataImplCopyWithImpl<$Res>
    extends _$TeacherEventCopyWithImpl<$Res, _$updateDataImpl>
    implements _$$updateDataImplCopyWith<$Res> {
  __$$updateDataImplCopyWithImpl(
      _$updateDataImpl _value, $Res Function(_$updateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? data = null,
    Object? context = null,
  }) {
    return _then(_$updateDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$updateDataImpl with DiagnosticableTreeMixin implements _updateData {
  const _$updateDataImpl(
      {required this.id,
      required final Map<dynamic, dynamic> data,
      required this.context})
      : _data = data;

  @override
  final String id;
  final Map<dynamic, dynamic> _data;
  @override
  Map<dynamic, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  final BuildContext context;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TeacherEvent.updateData(id: $id, data: $data, context: $context)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TeacherEvent.updateData'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('context', context));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$updateDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_data), context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$updateDataImplCopyWith<_$updateDataImpl> get copyWith =>
      __$$updateDataImplCopyWithImpl<_$updateDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id, Map<dynamic, dynamic> data, BuildContext context)
        updateData,
    required TResult Function() certificatePikerOne,
    required TResult Function() certificatePikerTwo,
    required TResult Function(String level) levelclickEventInAddiTutorial,
    required TResult Function(String subject) subjectClickEventInAddingTutoral,
  }) {
    return updateData(id, data, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id, Map<dynamic, dynamic> data, BuildContext context)?
        updateData,
    TResult? Function()? certificatePikerOne,
    TResult? Function()? certificatePikerTwo,
    TResult? Function(String level)? levelclickEventInAddiTutorial,
    TResult? Function(String subject)? subjectClickEventInAddingTutoral,
  }) {
    return updateData?.call(id, data, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id, Map<dynamic, dynamic> data, BuildContext context)?
        updateData,
    TResult Function()? certificatePikerOne,
    TResult Function()? certificatePikerTwo,
    TResult Function(String level)? levelclickEventInAddiTutorial,
    TResult Function(String subject)? subjectClickEventInAddingTutoral,
    required TResult orElse(),
  }) {
    if (updateData != null) {
      return updateData(id, data, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_updateData value) updateData,
    required TResult Function(_certificatePikerOne value) certificatePikerOne,
    required TResult Function(_certificatePikerTwo value) certificatePikerTwo,
    required TResult Function(_levelclickEventInAddiTutorial value)
        levelclickEventInAddiTutorial,
    required TResult Function(_subjectClickEventInAddingTutoral value)
        subjectClickEventInAddingTutoral,
  }) {
    return updateData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_updateData value)? updateData,
    TResult? Function(_certificatePikerOne value)? certificatePikerOne,
    TResult? Function(_certificatePikerTwo value)? certificatePikerTwo,
    TResult? Function(_levelclickEventInAddiTutorial value)?
        levelclickEventInAddiTutorial,
    TResult? Function(_subjectClickEventInAddingTutoral value)?
        subjectClickEventInAddingTutoral,
  }) {
    return updateData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_updateData value)? updateData,
    TResult Function(_certificatePikerOne value)? certificatePikerOne,
    TResult Function(_certificatePikerTwo value)? certificatePikerTwo,
    TResult Function(_levelclickEventInAddiTutorial value)?
        levelclickEventInAddiTutorial,
    TResult Function(_subjectClickEventInAddingTutoral value)?
        subjectClickEventInAddingTutoral,
    required TResult orElse(),
  }) {
    if (updateData != null) {
      return updateData(this);
    }
    return orElse();
  }
}

abstract class _updateData implements TeacherEvent {
  const factory _updateData(
      {required final String id,
      required final Map<dynamic, dynamic> data,
      required final BuildContext context}) = _$updateDataImpl;

  String get id;
  Map<dynamic, dynamic> get data;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$updateDataImplCopyWith<_$updateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$certificatePikerOneImplCopyWith<$Res> {
  factory _$$certificatePikerOneImplCopyWith(_$certificatePikerOneImpl value,
          $Res Function(_$certificatePikerOneImpl) then) =
      __$$certificatePikerOneImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$certificatePikerOneImplCopyWithImpl<$Res>
    extends _$TeacherEventCopyWithImpl<$Res, _$certificatePikerOneImpl>
    implements _$$certificatePikerOneImplCopyWith<$Res> {
  __$$certificatePikerOneImplCopyWithImpl(_$certificatePikerOneImpl _value,
      $Res Function(_$certificatePikerOneImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$certificatePikerOneImpl
    with DiagnosticableTreeMixin
    implements _certificatePikerOne {
  const _$certificatePikerOneImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TeacherEvent.certificatePikerOne()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'TeacherEvent.certificatePikerOne'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$certificatePikerOneImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id, Map<dynamic, dynamic> data, BuildContext context)
        updateData,
    required TResult Function() certificatePikerOne,
    required TResult Function() certificatePikerTwo,
    required TResult Function(String level) levelclickEventInAddiTutorial,
    required TResult Function(String subject) subjectClickEventInAddingTutoral,
  }) {
    return certificatePikerOne();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id, Map<dynamic, dynamic> data, BuildContext context)?
        updateData,
    TResult? Function()? certificatePikerOne,
    TResult? Function()? certificatePikerTwo,
    TResult? Function(String level)? levelclickEventInAddiTutorial,
    TResult? Function(String subject)? subjectClickEventInAddingTutoral,
  }) {
    return certificatePikerOne?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id, Map<dynamic, dynamic> data, BuildContext context)?
        updateData,
    TResult Function()? certificatePikerOne,
    TResult Function()? certificatePikerTwo,
    TResult Function(String level)? levelclickEventInAddiTutorial,
    TResult Function(String subject)? subjectClickEventInAddingTutoral,
    required TResult orElse(),
  }) {
    if (certificatePikerOne != null) {
      return certificatePikerOne();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_updateData value) updateData,
    required TResult Function(_certificatePikerOne value) certificatePikerOne,
    required TResult Function(_certificatePikerTwo value) certificatePikerTwo,
    required TResult Function(_levelclickEventInAddiTutorial value)
        levelclickEventInAddiTutorial,
    required TResult Function(_subjectClickEventInAddingTutoral value)
        subjectClickEventInAddingTutoral,
  }) {
    return certificatePikerOne(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_updateData value)? updateData,
    TResult? Function(_certificatePikerOne value)? certificatePikerOne,
    TResult? Function(_certificatePikerTwo value)? certificatePikerTwo,
    TResult? Function(_levelclickEventInAddiTutorial value)?
        levelclickEventInAddiTutorial,
    TResult? Function(_subjectClickEventInAddingTutoral value)?
        subjectClickEventInAddingTutoral,
  }) {
    return certificatePikerOne?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_updateData value)? updateData,
    TResult Function(_certificatePikerOne value)? certificatePikerOne,
    TResult Function(_certificatePikerTwo value)? certificatePikerTwo,
    TResult Function(_levelclickEventInAddiTutorial value)?
        levelclickEventInAddiTutorial,
    TResult Function(_subjectClickEventInAddingTutoral value)?
        subjectClickEventInAddingTutoral,
    required TResult orElse(),
  }) {
    if (certificatePikerOne != null) {
      return certificatePikerOne(this);
    }
    return orElse();
  }
}

abstract class _certificatePikerOne implements TeacherEvent {
  const factory _certificatePikerOne() = _$certificatePikerOneImpl;
}

/// @nodoc
abstract class _$$certificatePikerTwoImplCopyWith<$Res> {
  factory _$$certificatePikerTwoImplCopyWith(_$certificatePikerTwoImpl value,
          $Res Function(_$certificatePikerTwoImpl) then) =
      __$$certificatePikerTwoImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$certificatePikerTwoImplCopyWithImpl<$Res>
    extends _$TeacherEventCopyWithImpl<$Res, _$certificatePikerTwoImpl>
    implements _$$certificatePikerTwoImplCopyWith<$Res> {
  __$$certificatePikerTwoImplCopyWithImpl(_$certificatePikerTwoImpl _value,
      $Res Function(_$certificatePikerTwoImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$certificatePikerTwoImpl
    with DiagnosticableTreeMixin
    implements _certificatePikerTwo {
  const _$certificatePikerTwoImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TeacherEvent.certificatePikerTwo()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'TeacherEvent.certificatePikerTwo'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$certificatePikerTwoImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id, Map<dynamic, dynamic> data, BuildContext context)
        updateData,
    required TResult Function() certificatePikerOne,
    required TResult Function() certificatePikerTwo,
    required TResult Function(String level) levelclickEventInAddiTutorial,
    required TResult Function(String subject) subjectClickEventInAddingTutoral,
  }) {
    return certificatePikerTwo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id, Map<dynamic, dynamic> data, BuildContext context)?
        updateData,
    TResult? Function()? certificatePikerOne,
    TResult? Function()? certificatePikerTwo,
    TResult? Function(String level)? levelclickEventInAddiTutorial,
    TResult? Function(String subject)? subjectClickEventInAddingTutoral,
  }) {
    return certificatePikerTwo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id, Map<dynamic, dynamic> data, BuildContext context)?
        updateData,
    TResult Function()? certificatePikerOne,
    TResult Function()? certificatePikerTwo,
    TResult Function(String level)? levelclickEventInAddiTutorial,
    TResult Function(String subject)? subjectClickEventInAddingTutoral,
    required TResult orElse(),
  }) {
    if (certificatePikerTwo != null) {
      return certificatePikerTwo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_updateData value) updateData,
    required TResult Function(_certificatePikerOne value) certificatePikerOne,
    required TResult Function(_certificatePikerTwo value) certificatePikerTwo,
    required TResult Function(_levelclickEventInAddiTutorial value)
        levelclickEventInAddiTutorial,
    required TResult Function(_subjectClickEventInAddingTutoral value)
        subjectClickEventInAddingTutoral,
  }) {
    return certificatePikerTwo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_updateData value)? updateData,
    TResult? Function(_certificatePikerOne value)? certificatePikerOne,
    TResult? Function(_certificatePikerTwo value)? certificatePikerTwo,
    TResult? Function(_levelclickEventInAddiTutorial value)?
        levelclickEventInAddiTutorial,
    TResult? Function(_subjectClickEventInAddingTutoral value)?
        subjectClickEventInAddingTutoral,
  }) {
    return certificatePikerTwo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_updateData value)? updateData,
    TResult Function(_certificatePikerOne value)? certificatePikerOne,
    TResult Function(_certificatePikerTwo value)? certificatePikerTwo,
    TResult Function(_levelclickEventInAddiTutorial value)?
        levelclickEventInAddiTutorial,
    TResult Function(_subjectClickEventInAddingTutoral value)?
        subjectClickEventInAddingTutoral,
    required TResult orElse(),
  }) {
    if (certificatePikerTwo != null) {
      return certificatePikerTwo(this);
    }
    return orElse();
  }
}

abstract class _certificatePikerTwo implements TeacherEvent {
  const factory _certificatePikerTwo() = _$certificatePikerTwoImpl;
}

/// @nodoc
abstract class _$$levelclickEventInAddiTutorialImplCopyWith<$Res> {
  factory _$$levelclickEventInAddiTutorialImplCopyWith(
          _$levelclickEventInAddiTutorialImpl value,
          $Res Function(_$levelclickEventInAddiTutorialImpl) then) =
      __$$levelclickEventInAddiTutorialImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String level});
}

/// @nodoc
class __$$levelclickEventInAddiTutorialImplCopyWithImpl<$Res>
    extends _$TeacherEventCopyWithImpl<$Res,
        _$levelclickEventInAddiTutorialImpl>
    implements _$$levelclickEventInAddiTutorialImplCopyWith<$Res> {
  __$$levelclickEventInAddiTutorialImplCopyWithImpl(
      _$levelclickEventInAddiTutorialImpl _value,
      $Res Function(_$levelclickEventInAddiTutorialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
  }) {
    return _then(_$levelclickEventInAddiTutorialImpl(
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$levelclickEventInAddiTutorialImpl
    with DiagnosticableTreeMixin
    implements _levelclickEventInAddiTutorial {
  const _$levelclickEventInAddiTutorialImpl({required this.level});

  @override
  final String level;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TeacherEvent.levelclickEventInAddiTutorial(level: $level)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'TeacherEvent.levelclickEventInAddiTutorial'))
      ..add(DiagnosticsProperty('level', level));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$levelclickEventInAddiTutorialImpl &&
            (identical(other.level, level) || other.level == level));
  }

  @override
  int get hashCode => Object.hash(runtimeType, level);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$levelclickEventInAddiTutorialImplCopyWith<
          _$levelclickEventInAddiTutorialImpl>
      get copyWith => __$$levelclickEventInAddiTutorialImplCopyWithImpl<
          _$levelclickEventInAddiTutorialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id, Map<dynamic, dynamic> data, BuildContext context)
        updateData,
    required TResult Function() certificatePikerOne,
    required TResult Function() certificatePikerTwo,
    required TResult Function(String level) levelclickEventInAddiTutorial,
    required TResult Function(String subject) subjectClickEventInAddingTutoral,
  }) {
    return levelclickEventInAddiTutorial(level);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id, Map<dynamic, dynamic> data, BuildContext context)?
        updateData,
    TResult? Function()? certificatePikerOne,
    TResult? Function()? certificatePikerTwo,
    TResult? Function(String level)? levelclickEventInAddiTutorial,
    TResult? Function(String subject)? subjectClickEventInAddingTutoral,
  }) {
    return levelclickEventInAddiTutorial?.call(level);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id, Map<dynamic, dynamic> data, BuildContext context)?
        updateData,
    TResult Function()? certificatePikerOne,
    TResult Function()? certificatePikerTwo,
    TResult Function(String level)? levelclickEventInAddiTutorial,
    TResult Function(String subject)? subjectClickEventInAddingTutoral,
    required TResult orElse(),
  }) {
    if (levelclickEventInAddiTutorial != null) {
      return levelclickEventInAddiTutorial(level);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_updateData value) updateData,
    required TResult Function(_certificatePikerOne value) certificatePikerOne,
    required TResult Function(_certificatePikerTwo value) certificatePikerTwo,
    required TResult Function(_levelclickEventInAddiTutorial value)
        levelclickEventInAddiTutorial,
    required TResult Function(_subjectClickEventInAddingTutoral value)
        subjectClickEventInAddingTutoral,
  }) {
    return levelclickEventInAddiTutorial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_updateData value)? updateData,
    TResult? Function(_certificatePikerOne value)? certificatePikerOne,
    TResult? Function(_certificatePikerTwo value)? certificatePikerTwo,
    TResult? Function(_levelclickEventInAddiTutorial value)?
        levelclickEventInAddiTutorial,
    TResult? Function(_subjectClickEventInAddingTutoral value)?
        subjectClickEventInAddingTutoral,
  }) {
    return levelclickEventInAddiTutorial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_updateData value)? updateData,
    TResult Function(_certificatePikerOne value)? certificatePikerOne,
    TResult Function(_certificatePikerTwo value)? certificatePikerTwo,
    TResult Function(_levelclickEventInAddiTutorial value)?
        levelclickEventInAddiTutorial,
    TResult Function(_subjectClickEventInAddingTutoral value)?
        subjectClickEventInAddingTutoral,
    required TResult orElse(),
  }) {
    if (levelclickEventInAddiTutorial != null) {
      return levelclickEventInAddiTutorial(this);
    }
    return orElse();
  }
}

abstract class _levelclickEventInAddiTutorial implements TeacherEvent {
  const factory _levelclickEventInAddiTutorial({required final String level}) =
      _$levelclickEventInAddiTutorialImpl;

  String get level;
  @JsonKey(ignore: true)
  _$$levelclickEventInAddiTutorialImplCopyWith<
          _$levelclickEventInAddiTutorialImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$subjectClickEventInAddingTutoralImplCopyWith<$Res> {
  factory _$$subjectClickEventInAddingTutoralImplCopyWith(
          _$subjectClickEventInAddingTutoralImpl value,
          $Res Function(_$subjectClickEventInAddingTutoralImpl) then) =
      __$$subjectClickEventInAddingTutoralImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String subject});
}

/// @nodoc
class __$$subjectClickEventInAddingTutoralImplCopyWithImpl<$Res>
    extends _$TeacherEventCopyWithImpl<$Res,
        _$subjectClickEventInAddingTutoralImpl>
    implements _$$subjectClickEventInAddingTutoralImplCopyWith<$Res> {
  __$$subjectClickEventInAddingTutoralImplCopyWithImpl(
      _$subjectClickEventInAddingTutoralImpl _value,
      $Res Function(_$subjectClickEventInAddingTutoralImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subject = null,
  }) {
    return _then(_$subjectClickEventInAddingTutoralImpl(
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$subjectClickEventInAddingTutoralImpl
    with DiagnosticableTreeMixin
    implements _subjectClickEventInAddingTutoral {
  const _$subjectClickEventInAddingTutoralImpl({required this.subject});

  @override
  final String subject;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TeacherEvent.subjectClickEventInAddingTutoral(subject: $subject)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'TeacherEvent.subjectClickEventInAddingTutoral'))
      ..add(DiagnosticsProperty('subject', subject));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$subjectClickEventInAddingTutoralImpl &&
            (identical(other.subject, subject) || other.subject == subject));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subject);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$subjectClickEventInAddingTutoralImplCopyWith<
          _$subjectClickEventInAddingTutoralImpl>
      get copyWith => __$$subjectClickEventInAddingTutoralImplCopyWithImpl<
          _$subjectClickEventInAddingTutoralImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id, Map<dynamic, dynamic> data, BuildContext context)
        updateData,
    required TResult Function() certificatePikerOne,
    required TResult Function() certificatePikerTwo,
    required TResult Function(String level) levelclickEventInAddiTutorial,
    required TResult Function(String subject) subjectClickEventInAddingTutoral,
  }) {
    return subjectClickEventInAddingTutoral(subject);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id, Map<dynamic, dynamic> data, BuildContext context)?
        updateData,
    TResult? Function()? certificatePikerOne,
    TResult? Function()? certificatePikerTwo,
    TResult? Function(String level)? levelclickEventInAddiTutorial,
    TResult? Function(String subject)? subjectClickEventInAddingTutoral,
  }) {
    return subjectClickEventInAddingTutoral?.call(subject);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id, Map<dynamic, dynamic> data, BuildContext context)?
        updateData,
    TResult Function()? certificatePikerOne,
    TResult Function()? certificatePikerTwo,
    TResult Function(String level)? levelclickEventInAddiTutorial,
    TResult Function(String subject)? subjectClickEventInAddingTutoral,
    required TResult orElse(),
  }) {
    if (subjectClickEventInAddingTutoral != null) {
      return subjectClickEventInAddingTutoral(subject);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_updateData value) updateData,
    required TResult Function(_certificatePikerOne value) certificatePikerOne,
    required TResult Function(_certificatePikerTwo value) certificatePikerTwo,
    required TResult Function(_levelclickEventInAddiTutorial value)
        levelclickEventInAddiTutorial,
    required TResult Function(_subjectClickEventInAddingTutoral value)
        subjectClickEventInAddingTutoral,
  }) {
    return subjectClickEventInAddingTutoral(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_updateData value)? updateData,
    TResult? Function(_certificatePikerOne value)? certificatePikerOne,
    TResult? Function(_certificatePikerTwo value)? certificatePikerTwo,
    TResult? Function(_levelclickEventInAddiTutorial value)?
        levelclickEventInAddiTutorial,
    TResult? Function(_subjectClickEventInAddingTutoral value)?
        subjectClickEventInAddingTutoral,
  }) {
    return subjectClickEventInAddingTutoral?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_updateData value)? updateData,
    TResult Function(_certificatePikerOne value)? certificatePikerOne,
    TResult Function(_certificatePikerTwo value)? certificatePikerTwo,
    TResult Function(_levelclickEventInAddiTutorial value)?
        levelclickEventInAddiTutorial,
    TResult Function(_subjectClickEventInAddingTutoral value)?
        subjectClickEventInAddingTutoral,
    required TResult orElse(),
  }) {
    if (subjectClickEventInAddingTutoral != null) {
      return subjectClickEventInAddingTutoral(this);
    }
    return orElse();
  }
}

abstract class _subjectClickEventInAddingTutoral implements TeacherEvent {
  const factory _subjectClickEventInAddingTutoral(
      {required final String subject}) = _$subjectClickEventInAddingTutoralImpl;

  String get subject;
  @JsonKey(ignore: true)
  _$$subjectClickEventInAddingTutoralImplCopyWith<
          _$subjectClickEventInAddingTutoralImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TeacherState {
  String? get cetificateImageOne => throw _privateConstructorUsedError;
  String? get cetificateImageTwo => throw _privateConstructorUsedError;
  String get subjectDropDown => throw _privateConstructorUsedError;
  String get expDropDown => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TeacherStateCopyWith<TeacherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherStateCopyWith<$Res> {
  factory $TeacherStateCopyWith(
          TeacherState value, $Res Function(TeacherState) then) =
      _$TeacherStateCopyWithImpl<$Res, TeacherState>;
  @useResult
  $Res call(
      {String? cetificateImageOne,
      String? cetificateImageTwo,
      String subjectDropDown,
      String expDropDown});
}

/// @nodoc
class _$TeacherStateCopyWithImpl<$Res, $Val extends TeacherState>
    implements $TeacherStateCopyWith<$Res> {
  _$TeacherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cetificateImageOne = freezed,
    Object? cetificateImageTwo = freezed,
    Object? subjectDropDown = null,
    Object? expDropDown = null,
  }) {
    return _then(_value.copyWith(
      cetificateImageOne: freezed == cetificateImageOne
          ? _value.cetificateImageOne
          : cetificateImageOne // ignore: cast_nullable_to_non_nullable
              as String?,
      cetificateImageTwo: freezed == cetificateImageTwo
          ? _value.cetificateImageTwo
          : cetificateImageTwo // ignore: cast_nullable_to_non_nullable
              as String?,
      subjectDropDown: null == subjectDropDown
          ? _value.subjectDropDown
          : subjectDropDown // ignore: cast_nullable_to_non_nullable
              as String,
      expDropDown: null == expDropDown
          ? _value.expDropDown
          : expDropDown // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeacherStateImplCopyWith<$Res>
    implements $TeacherStateCopyWith<$Res> {
  factory _$$TeacherStateImplCopyWith(
          _$TeacherStateImpl value, $Res Function(_$TeacherStateImpl) then) =
      __$$TeacherStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? cetificateImageOne,
      String? cetificateImageTwo,
      String subjectDropDown,
      String expDropDown});
}

/// @nodoc
class __$$TeacherStateImplCopyWithImpl<$Res>
    extends _$TeacherStateCopyWithImpl<$Res, _$TeacherStateImpl>
    implements _$$TeacherStateImplCopyWith<$Res> {
  __$$TeacherStateImplCopyWithImpl(
      _$TeacherStateImpl _value, $Res Function(_$TeacherStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cetificateImageOne = freezed,
    Object? cetificateImageTwo = freezed,
    Object? subjectDropDown = null,
    Object? expDropDown = null,
  }) {
    return _then(_$TeacherStateImpl(
      cetificateImageOne: freezed == cetificateImageOne
          ? _value.cetificateImageOne
          : cetificateImageOne // ignore: cast_nullable_to_non_nullable
              as String?,
      cetificateImageTwo: freezed == cetificateImageTwo
          ? _value.cetificateImageTwo
          : cetificateImageTwo // ignore: cast_nullable_to_non_nullable
              as String?,
      subjectDropDown: null == subjectDropDown
          ? _value.subjectDropDown
          : subjectDropDown // ignore: cast_nullable_to_non_nullable
              as String,
      expDropDown: null == expDropDown
          ? _value.expDropDown
          : expDropDown // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TeacherStateImpl with DiagnosticableTreeMixin implements _TeacherState {
  const _$TeacherStateImpl(
      {this.cetificateImageOne,
      this.cetificateImageTwo,
      required this.subjectDropDown,
      required this.expDropDown});

  @override
  final String? cetificateImageOne;
  @override
  final String? cetificateImageTwo;
  @override
  final String subjectDropDown;
  @override
  final String expDropDown;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TeacherState(cetificateImageOne: $cetificateImageOne, cetificateImageTwo: $cetificateImageTwo, subjectDropDown: $subjectDropDown, expDropDown: $expDropDown)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TeacherState'))
      ..add(DiagnosticsProperty('cetificateImageOne', cetificateImageOne))
      ..add(DiagnosticsProperty('cetificateImageTwo', cetificateImageTwo))
      ..add(DiagnosticsProperty('subjectDropDown', subjectDropDown))
      ..add(DiagnosticsProperty('expDropDown', expDropDown));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeacherStateImpl &&
            (identical(other.cetificateImageOne, cetificateImageOne) ||
                other.cetificateImageOne == cetificateImageOne) &&
            (identical(other.cetificateImageTwo, cetificateImageTwo) ||
                other.cetificateImageTwo == cetificateImageTwo) &&
            (identical(other.subjectDropDown, subjectDropDown) ||
                other.subjectDropDown == subjectDropDown) &&
            (identical(other.expDropDown, expDropDown) ||
                other.expDropDown == expDropDown));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cetificateImageOne,
      cetificateImageTwo, subjectDropDown, expDropDown);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeacherStateImplCopyWith<_$TeacherStateImpl> get copyWith =>
      __$$TeacherStateImplCopyWithImpl<_$TeacherStateImpl>(this, _$identity);
}

abstract class _TeacherState implements TeacherState {
  const factory _TeacherState(
      {final String? cetificateImageOne,
      final String? cetificateImageTwo,
      required final String subjectDropDown,
      required final String expDropDown}) = _$TeacherStateImpl;

  @override
  String? get cetificateImageOne;
  @override
  String? get cetificateImageTwo;
  @override
  String get subjectDropDown;
  @override
  String get expDropDown;
  @override
  @JsonKey(ignore: true)
  _$$TeacherStateImplCopyWith<_$TeacherStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
