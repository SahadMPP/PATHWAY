// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lesson_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LessonFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) navicatingTutoralForm,
    required TResult Function(BuildContext context) cancelButtonClick,
    required TResult Function() imagePiking,
    required TResult Function(String subject) dropDownpiker,
    required TResult Function(BuildContext context, String subject,
            String title, String coverImage)
        addingLession,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? navicatingTutoralForm,
    TResult? Function(BuildContext context)? cancelButtonClick,
    TResult? Function()? imagePiking,
    TResult? Function(String subject)? dropDownpiker,
    TResult? Function(BuildContext context, String subject, String title,
            String coverImage)?
        addingLession,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? navicatingTutoralForm,
    TResult Function(BuildContext context)? cancelButtonClick,
    TResult Function()? imagePiking,
    TResult Function(String subject)? dropDownpiker,
    TResult Function(BuildContext context, String subject, String title,
            String coverImage)?
        addingLession,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_navicatingTutoralForm value)
        navicatingTutoralForm,
    required TResult Function(_cancelButtonClick value) cancelButtonClick,
    required TResult Function(_imagePiking value) imagePiking,
    required TResult Function(_dropDownpiker value) dropDownpiker,
    required TResult Function(_addingLession value) addingLession,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_navicatingTutoralForm value)? navicatingTutoralForm,
    TResult? Function(_cancelButtonClick value)? cancelButtonClick,
    TResult? Function(_imagePiking value)? imagePiking,
    TResult? Function(_dropDownpiker value)? dropDownpiker,
    TResult? Function(_addingLession value)? addingLession,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_navicatingTutoralForm value)? navicatingTutoralForm,
    TResult Function(_cancelButtonClick value)? cancelButtonClick,
    TResult Function(_imagePiking value)? imagePiking,
    TResult Function(_dropDownpiker value)? dropDownpiker,
    TResult Function(_addingLession value)? addingLession,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonFormEventCopyWith<$Res> {
  factory $LessonFormEventCopyWith(
          LessonFormEvent value, $Res Function(LessonFormEvent) then) =
      _$LessonFormEventCopyWithImpl<$Res, LessonFormEvent>;
}

/// @nodoc
class _$LessonFormEventCopyWithImpl<$Res, $Val extends LessonFormEvent>
    implements $LessonFormEventCopyWith<$Res> {
  _$LessonFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$navicatingTutoralFormImplCopyWith<$Res> {
  factory _$$navicatingTutoralFormImplCopyWith(
          _$navicatingTutoralFormImpl value,
          $Res Function(_$navicatingTutoralFormImpl) then) =
      __$$navicatingTutoralFormImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$navicatingTutoralFormImplCopyWithImpl<$Res>
    extends _$LessonFormEventCopyWithImpl<$Res, _$navicatingTutoralFormImpl>
    implements _$$navicatingTutoralFormImplCopyWith<$Res> {
  __$$navicatingTutoralFormImplCopyWithImpl(_$navicatingTutoralFormImpl _value,
      $Res Function(_$navicatingTutoralFormImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$navicatingTutoralFormImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$navicatingTutoralFormImpl implements _navicatingTutoralForm {
  const _$navicatingTutoralFormImpl({required this.context});

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'LessonFormEvent.navicatingTutoralForm(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$navicatingTutoralFormImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$navicatingTutoralFormImplCopyWith<_$navicatingTutoralFormImpl>
      get copyWith => __$$navicatingTutoralFormImplCopyWithImpl<
          _$navicatingTutoralFormImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) navicatingTutoralForm,
    required TResult Function(BuildContext context) cancelButtonClick,
    required TResult Function() imagePiking,
    required TResult Function(String subject) dropDownpiker,
    required TResult Function(BuildContext context, String subject,
            String title, String coverImage)
        addingLession,
  }) {
    return navicatingTutoralForm(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? navicatingTutoralForm,
    TResult? Function(BuildContext context)? cancelButtonClick,
    TResult? Function()? imagePiking,
    TResult? Function(String subject)? dropDownpiker,
    TResult? Function(BuildContext context, String subject, String title,
            String coverImage)?
        addingLession,
  }) {
    return navicatingTutoralForm?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? navicatingTutoralForm,
    TResult Function(BuildContext context)? cancelButtonClick,
    TResult Function()? imagePiking,
    TResult Function(String subject)? dropDownpiker,
    TResult Function(BuildContext context, String subject, String title,
            String coverImage)?
        addingLession,
    required TResult orElse(),
  }) {
    if (navicatingTutoralForm != null) {
      return navicatingTutoralForm(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_navicatingTutoralForm value)
        navicatingTutoralForm,
    required TResult Function(_cancelButtonClick value) cancelButtonClick,
    required TResult Function(_imagePiking value) imagePiking,
    required TResult Function(_dropDownpiker value) dropDownpiker,
    required TResult Function(_addingLession value) addingLession,
  }) {
    return navicatingTutoralForm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_navicatingTutoralForm value)? navicatingTutoralForm,
    TResult? Function(_cancelButtonClick value)? cancelButtonClick,
    TResult? Function(_imagePiking value)? imagePiking,
    TResult? Function(_dropDownpiker value)? dropDownpiker,
    TResult? Function(_addingLession value)? addingLession,
  }) {
    return navicatingTutoralForm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_navicatingTutoralForm value)? navicatingTutoralForm,
    TResult Function(_cancelButtonClick value)? cancelButtonClick,
    TResult Function(_imagePiking value)? imagePiking,
    TResult Function(_dropDownpiker value)? dropDownpiker,
    TResult Function(_addingLession value)? addingLession,
    required TResult orElse(),
  }) {
    if (navicatingTutoralForm != null) {
      return navicatingTutoralForm(this);
    }
    return orElse();
  }
}

abstract class _navicatingTutoralForm implements LessonFormEvent {
  const factory _navicatingTutoralForm({required final BuildContext context}) =
      _$navicatingTutoralFormImpl;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$navicatingTutoralFormImplCopyWith<_$navicatingTutoralFormImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$cancelButtonClickImplCopyWith<$Res> {
  factory _$$cancelButtonClickImplCopyWith(_$cancelButtonClickImpl value,
          $Res Function(_$cancelButtonClickImpl) then) =
      __$$cancelButtonClickImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$cancelButtonClickImplCopyWithImpl<$Res>
    extends _$LessonFormEventCopyWithImpl<$Res, _$cancelButtonClickImpl>
    implements _$$cancelButtonClickImplCopyWith<$Res> {
  __$$cancelButtonClickImplCopyWithImpl(_$cancelButtonClickImpl _value,
      $Res Function(_$cancelButtonClickImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$cancelButtonClickImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$cancelButtonClickImpl implements _cancelButtonClick {
  const _$cancelButtonClickImpl({required this.context});

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'LessonFormEvent.cancelButtonClick(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$cancelButtonClickImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$cancelButtonClickImplCopyWith<_$cancelButtonClickImpl> get copyWith =>
      __$$cancelButtonClickImplCopyWithImpl<_$cancelButtonClickImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) navicatingTutoralForm,
    required TResult Function(BuildContext context) cancelButtonClick,
    required TResult Function() imagePiking,
    required TResult Function(String subject) dropDownpiker,
    required TResult Function(BuildContext context, String subject,
            String title, String coverImage)
        addingLession,
  }) {
    return cancelButtonClick(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? navicatingTutoralForm,
    TResult? Function(BuildContext context)? cancelButtonClick,
    TResult? Function()? imagePiking,
    TResult? Function(String subject)? dropDownpiker,
    TResult? Function(BuildContext context, String subject, String title,
            String coverImage)?
        addingLession,
  }) {
    return cancelButtonClick?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? navicatingTutoralForm,
    TResult Function(BuildContext context)? cancelButtonClick,
    TResult Function()? imagePiking,
    TResult Function(String subject)? dropDownpiker,
    TResult Function(BuildContext context, String subject, String title,
            String coverImage)?
        addingLession,
    required TResult orElse(),
  }) {
    if (cancelButtonClick != null) {
      return cancelButtonClick(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_navicatingTutoralForm value)
        navicatingTutoralForm,
    required TResult Function(_cancelButtonClick value) cancelButtonClick,
    required TResult Function(_imagePiking value) imagePiking,
    required TResult Function(_dropDownpiker value) dropDownpiker,
    required TResult Function(_addingLession value) addingLession,
  }) {
    return cancelButtonClick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_navicatingTutoralForm value)? navicatingTutoralForm,
    TResult? Function(_cancelButtonClick value)? cancelButtonClick,
    TResult? Function(_imagePiking value)? imagePiking,
    TResult? Function(_dropDownpiker value)? dropDownpiker,
    TResult? Function(_addingLession value)? addingLession,
  }) {
    return cancelButtonClick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_navicatingTutoralForm value)? navicatingTutoralForm,
    TResult Function(_cancelButtonClick value)? cancelButtonClick,
    TResult Function(_imagePiking value)? imagePiking,
    TResult Function(_dropDownpiker value)? dropDownpiker,
    TResult Function(_addingLession value)? addingLession,
    required TResult orElse(),
  }) {
    if (cancelButtonClick != null) {
      return cancelButtonClick(this);
    }
    return orElse();
  }
}

abstract class _cancelButtonClick implements LessonFormEvent {
  const factory _cancelButtonClick({required final BuildContext context}) =
      _$cancelButtonClickImpl;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$cancelButtonClickImplCopyWith<_$cancelButtonClickImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$imagePikingImplCopyWith<$Res> {
  factory _$$imagePikingImplCopyWith(
          _$imagePikingImpl value, $Res Function(_$imagePikingImpl) then) =
      __$$imagePikingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$imagePikingImplCopyWithImpl<$Res>
    extends _$LessonFormEventCopyWithImpl<$Res, _$imagePikingImpl>
    implements _$$imagePikingImplCopyWith<$Res> {
  __$$imagePikingImplCopyWithImpl(
      _$imagePikingImpl _value, $Res Function(_$imagePikingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$imagePikingImpl implements _imagePiking {
  const _$imagePikingImpl();

  @override
  String toString() {
    return 'LessonFormEvent.imagePiking()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$imagePikingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) navicatingTutoralForm,
    required TResult Function(BuildContext context) cancelButtonClick,
    required TResult Function() imagePiking,
    required TResult Function(String subject) dropDownpiker,
    required TResult Function(BuildContext context, String subject,
            String title, String coverImage)
        addingLession,
  }) {
    return imagePiking();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? navicatingTutoralForm,
    TResult? Function(BuildContext context)? cancelButtonClick,
    TResult? Function()? imagePiking,
    TResult? Function(String subject)? dropDownpiker,
    TResult? Function(BuildContext context, String subject, String title,
            String coverImage)?
        addingLession,
  }) {
    return imagePiking?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? navicatingTutoralForm,
    TResult Function(BuildContext context)? cancelButtonClick,
    TResult Function()? imagePiking,
    TResult Function(String subject)? dropDownpiker,
    TResult Function(BuildContext context, String subject, String title,
            String coverImage)?
        addingLession,
    required TResult orElse(),
  }) {
    if (imagePiking != null) {
      return imagePiking();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_navicatingTutoralForm value)
        navicatingTutoralForm,
    required TResult Function(_cancelButtonClick value) cancelButtonClick,
    required TResult Function(_imagePiking value) imagePiking,
    required TResult Function(_dropDownpiker value) dropDownpiker,
    required TResult Function(_addingLession value) addingLession,
  }) {
    return imagePiking(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_navicatingTutoralForm value)? navicatingTutoralForm,
    TResult? Function(_cancelButtonClick value)? cancelButtonClick,
    TResult? Function(_imagePiking value)? imagePiking,
    TResult? Function(_dropDownpiker value)? dropDownpiker,
    TResult? Function(_addingLession value)? addingLession,
  }) {
    return imagePiking?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_navicatingTutoralForm value)? navicatingTutoralForm,
    TResult Function(_cancelButtonClick value)? cancelButtonClick,
    TResult Function(_imagePiking value)? imagePiking,
    TResult Function(_dropDownpiker value)? dropDownpiker,
    TResult Function(_addingLession value)? addingLession,
    required TResult orElse(),
  }) {
    if (imagePiking != null) {
      return imagePiking(this);
    }
    return orElse();
  }
}

abstract class _imagePiking implements LessonFormEvent {
  const factory _imagePiking() = _$imagePikingImpl;
}

/// @nodoc
abstract class _$$dropDownpikerImplCopyWith<$Res> {
  factory _$$dropDownpikerImplCopyWith(
          _$dropDownpikerImpl value, $Res Function(_$dropDownpikerImpl) then) =
      __$$dropDownpikerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String subject});
}

/// @nodoc
class __$$dropDownpikerImplCopyWithImpl<$Res>
    extends _$LessonFormEventCopyWithImpl<$Res, _$dropDownpikerImpl>
    implements _$$dropDownpikerImplCopyWith<$Res> {
  __$$dropDownpikerImplCopyWithImpl(
      _$dropDownpikerImpl _value, $Res Function(_$dropDownpikerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subject = null,
  }) {
    return _then(_$dropDownpikerImpl(
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$dropDownpikerImpl implements _dropDownpiker {
  const _$dropDownpikerImpl({required this.subject});

  @override
  final String subject;

  @override
  String toString() {
    return 'LessonFormEvent.dropDownpiker(subject: $subject)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$dropDownpikerImpl &&
            (identical(other.subject, subject) || other.subject == subject));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subject);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$dropDownpikerImplCopyWith<_$dropDownpikerImpl> get copyWith =>
      __$$dropDownpikerImplCopyWithImpl<_$dropDownpikerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) navicatingTutoralForm,
    required TResult Function(BuildContext context) cancelButtonClick,
    required TResult Function() imagePiking,
    required TResult Function(String subject) dropDownpiker,
    required TResult Function(BuildContext context, String subject,
            String title, String coverImage)
        addingLession,
  }) {
    return dropDownpiker(subject);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? navicatingTutoralForm,
    TResult? Function(BuildContext context)? cancelButtonClick,
    TResult? Function()? imagePiking,
    TResult? Function(String subject)? dropDownpiker,
    TResult? Function(BuildContext context, String subject, String title,
            String coverImage)?
        addingLession,
  }) {
    return dropDownpiker?.call(subject);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? navicatingTutoralForm,
    TResult Function(BuildContext context)? cancelButtonClick,
    TResult Function()? imagePiking,
    TResult Function(String subject)? dropDownpiker,
    TResult Function(BuildContext context, String subject, String title,
            String coverImage)?
        addingLession,
    required TResult orElse(),
  }) {
    if (dropDownpiker != null) {
      return dropDownpiker(subject);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_navicatingTutoralForm value)
        navicatingTutoralForm,
    required TResult Function(_cancelButtonClick value) cancelButtonClick,
    required TResult Function(_imagePiking value) imagePiking,
    required TResult Function(_dropDownpiker value) dropDownpiker,
    required TResult Function(_addingLession value) addingLession,
  }) {
    return dropDownpiker(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_navicatingTutoralForm value)? navicatingTutoralForm,
    TResult? Function(_cancelButtonClick value)? cancelButtonClick,
    TResult? Function(_imagePiking value)? imagePiking,
    TResult? Function(_dropDownpiker value)? dropDownpiker,
    TResult? Function(_addingLession value)? addingLession,
  }) {
    return dropDownpiker?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_navicatingTutoralForm value)? navicatingTutoralForm,
    TResult Function(_cancelButtonClick value)? cancelButtonClick,
    TResult Function(_imagePiking value)? imagePiking,
    TResult Function(_dropDownpiker value)? dropDownpiker,
    TResult Function(_addingLession value)? addingLession,
    required TResult orElse(),
  }) {
    if (dropDownpiker != null) {
      return dropDownpiker(this);
    }
    return orElse();
  }
}

abstract class _dropDownpiker implements LessonFormEvent {
  const factory _dropDownpiker({required final String subject}) =
      _$dropDownpikerImpl;

  String get subject;
  @JsonKey(ignore: true)
  _$$dropDownpikerImplCopyWith<_$dropDownpikerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$addingLessionImplCopyWith<$Res> {
  factory _$$addingLessionImplCopyWith(
          _$addingLessionImpl value, $Res Function(_$addingLessionImpl) then) =
      __$$addingLessionImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {BuildContext context, String subject, String title, String coverImage});
}

/// @nodoc
class __$$addingLessionImplCopyWithImpl<$Res>
    extends _$LessonFormEventCopyWithImpl<$Res, _$addingLessionImpl>
    implements _$$addingLessionImplCopyWith<$Res> {
  __$$addingLessionImplCopyWithImpl(
      _$addingLessionImpl _value, $Res Function(_$addingLessionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? subject = null,
    Object? title = null,
    Object? coverImage = null,
  }) {
    return _then(_$addingLessionImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      coverImage: null == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$addingLessionImpl implements _addingLession {
  const _$addingLessionImpl(
      {required this.context,
      required this.subject,
      required this.title,
      required this.coverImage});

  @override
  final BuildContext context;
  @override
  final String subject;
  @override
  final String title;
  @override
  final String coverImage;

  @override
  String toString() {
    return 'LessonFormEvent.addingLession(context: $context, subject: $subject, title: $title, coverImage: $coverImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$addingLessionImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.coverImage, coverImage) ||
                other.coverImage == coverImage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, context, subject, title, coverImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$addingLessionImplCopyWith<_$addingLessionImpl> get copyWith =>
      __$$addingLessionImplCopyWithImpl<_$addingLessionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) navicatingTutoralForm,
    required TResult Function(BuildContext context) cancelButtonClick,
    required TResult Function() imagePiking,
    required TResult Function(String subject) dropDownpiker,
    required TResult Function(BuildContext context, String subject,
            String title, String coverImage)
        addingLession,
  }) {
    return addingLession(context, subject, title, coverImage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? navicatingTutoralForm,
    TResult? Function(BuildContext context)? cancelButtonClick,
    TResult? Function()? imagePiking,
    TResult? Function(String subject)? dropDownpiker,
    TResult? Function(BuildContext context, String subject, String title,
            String coverImage)?
        addingLession,
  }) {
    return addingLession?.call(context, subject, title, coverImage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? navicatingTutoralForm,
    TResult Function(BuildContext context)? cancelButtonClick,
    TResult Function()? imagePiking,
    TResult Function(String subject)? dropDownpiker,
    TResult Function(BuildContext context, String subject, String title,
            String coverImage)?
        addingLession,
    required TResult orElse(),
  }) {
    if (addingLession != null) {
      return addingLession(context, subject, title, coverImage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_navicatingTutoralForm value)
        navicatingTutoralForm,
    required TResult Function(_cancelButtonClick value) cancelButtonClick,
    required TResult Function(_imagePiking value) imagePiking,
    required TResult Function(_dropDownpiker value) dropDownpiker,
    required TResult Function(_addingLession value) addingLession,
  }) {
    return addingLession(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_navicatingTutoralForm value)? navicatingTutoralForm,
    TResult? Function(_cancelButtonClick value)? cancelButtonClick,
    TResult? Function(_imagePiking value)? imagePiking,
    TResult? Function(_dropDownpiker value)? dropDownpiker,
    TResult? Function(_addingLession value)? addingLession,
  }) {
    return addingLession?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_navicatingTutoralForm value)? navicatingTutoralForm,
    TResult Function(_cancelButtonClick value)? cancelButtonClick,
    TResult Function(_imagePiking value)? imagePiking,
    TResult Function(_dropDownpiker value)? dropDownpiker,
    TResult Function(_addingLession value)? addingLession,
    required TResult orElse(),
  }) {
    if (addingLession != null) {
      return addingLession(this);
    }
    return orElse();
  }
}

abstract class _addingLession implements LessonFormEvent {
  const factory _addingLession(
      {required final BuildContext context,
      required final String subject,
      required final String title,
      required final String coverImage}) = _$addingLessionImpl;

  BuildContext get context;
  String get subject;
  String get title;
  String get coverImage;
  @JsonKey(ignore: true)
  _$$addingLessionImplCopyWith<_$addingLessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LessonFormState {
  String? get pikedImage => throw _privateConstructorUsedError;
  String? get dropDownpiker => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LessonFormStateCopyWith<LessonFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonFormStateCopyWith<$Res> {
  factory $LessonFormStateCopyWith(
          LessonFormState value, $Res Function(LessonFormState) then) =
      _$LessonFormStateCopyWithImpl<$Res, LessonFormState>;
  @useResult
  $Res call({String? pikedImage, String? dropDownpiker});
}

/// @nodoc
class _$LessonFormStateCopyWithImpl<$Res, $Val extends LessonFormState>
    implements $LessonFormStateCopyWith<$Res> {
  _$LessonFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pikedImage = freezed,
    Object? dropDownpiker = freezed,
  }) {
    return _then(_value.copyWith(
      pikedImage: freezed == pikedImage
          ? _value.pikedImage
          : pikedImage // ignore: cast_nullable_to_non_nullable
              as String?,
      dropDownpiker: freezed == dropDownpiker
          ? _value.dropDownpiker
          : dropDownpiker // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LessonFormStateImplCopyWith<$Res>
    implements $LessonFormStateCopyWith<$Res> {
  factory _$$LessonFormStateImplCopyWith(_$LessonFormStateImpl value,
          $Res Function(_$LessonFormStateImpl) then) =
      __$$LessonFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? pikedImage, String? dropDownpiker});
}

/// @nodoc
class __$$LessonFormStateImplCopyWithImpl<$Res>
    extends _$LessonFormStateCopyWithImpl<$Res, _$LessonFormStateImpl>
    implements _$$LessonFormStateImplCopyWith<$Res> {
  __$$LessonFormStateImplCopyWithImpl(
      _$LessonFormStateImpl _value, $Res Function(_$LessonFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pikedImage = freezed,
    Object? dropDownpiker = freezed,
  }) {
    return _then(_$LessonFormStateImpl(
      pikedImage: freezed == pikedImage
          ? _value.pikedImage
          : pikedImage // ignore: cast_nullable_to_non_nullable
              as String?,
      dropDownpiker: freezed == dropDownpiker
          ? _value.dropDownpiker
          : dropDownpiker // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LessonFormStateImpl implements _LessonFormState {
  const _$LessonFormStateImpl({this.pikedImage, required this.dropDownpiker});

  @override
  final String? pikedImage;
  @override
  final String? dropDownpiker;

  @override
  String toString() {
    return 'LessonFormState(pikedImage: $pikedImage, dropDownpiker: $dropDownpiker)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonFormStateImpl &&
            (identical(other.pikedImage, pikedImage) ||
                other.pikedImage == pikedImage) &&
            (identical(other.dropDownpiker, dropDownpiker) ||
                other.dropDownpiker == dropDownpiker));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pikedImage, dropDownpiker);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonFormStateImplCopyWith<_$LessonFormStateImpl> get copyWith =>
      __$$LessonFormStateImplCopyWithImpl<_$LessonFormStateImpl>(
          this, _$identity);
}

abstract class _LessonFormState implements LessonFormState {
  const factory _LessonFormState(
      {final String? pikedImage,
      required final String? dropDownpiker}) = _$LessonFormStateImpl;

  @override
  String? get pikedImage;
  @override
  String? get dropDownpiker;
  @override
  @JsonKey(ignore: true)
  _$$LessonFormStateImplCopyWith<_$LessonFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
