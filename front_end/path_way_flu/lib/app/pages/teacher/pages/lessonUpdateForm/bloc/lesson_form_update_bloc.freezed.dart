// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lesson_form_update_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LessonFormUpdateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuildContext context, String id, Map<dynamic, dynamic> data)
        updatelesson,
    required TResult Function() cancelButtonClick,
    required TResult Function(String value) dropDownpiker,
    required TResult Function(String value, String pikedImage)
        givingInitialDropDownValue,
    required TResult Function() imagePiking,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            BuildContext context, String id, Map<dynamic, dynamic> data)?
        updatelesson,
    TResult? Function()? cancelButtonClick,
    TResult? Function(String value)? dropDownpiker,
    TResult? Function(String value, String pikedImage)?
        givingInitialDropDownValue,
    TResult? Function()? imagePiking,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            BuildContext context, String id, Map<dynamic, dynamic> data)?
        updatelesson,
    TResult Function()? cancelButtonClick,
    TResult Function(String value)? dropDownpiker,
    TResult Function(String value, String pikedImage)?
        givingInitialDropDownValue,
    TResult Function()? imagePiking,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_updatelesson value) updatelesson,
    required TResult Function(_cancelButtonClick value) cancelButtonClick,
    required TResult Function(_dropDownpiker value) dropDownpiker,
    required TResult Function(_givingInitialDropDownValue value)
        givingInitialDropDownValue,
    required TResult Function(_imagePiking value) imagePiking,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_updatelesson value)? updatelesson,
    TResult? Function(_cancelButtonClick value)? cancelButtonClick,
    TResult? Function(_dropDownpiker value)? dropDownpiker,
    TResult? Function(_givingInitialDropDownValue value)?
        givingInitialDropDownValue,
    TResult? Function(_imagePiking value)? imagePiking,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_updatelesson value)? updatelesson,
    TResult Function(_cancelButtonClick value)? cancelButtonClick,
    TResult Function(_dropDownpiker value)? dropDownpiker,
    TResult Function(_givingInitialDropDownValue value)?
        givingInitialDropDownValue,
    TResult Function(_imagePiking value)? imagePiking,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonFormUpdateEventCopyWith<$Res> {
  factory $LessonFormUpdateEventCopyWith(LessonFormUpdateEvent value,
          $Res Function(LessonFormUpdateEvent) then) =
      _$LessonFormUpdateEventCopyWithImpl<$Res, LessonFormUpdateEvent>;
}

/// @nodoc
class _$LessonFormUpdateEventCopyWithImpl<$Res,
        $Val extends LessonFormUpdateEvent>
    implements $LessonFormUpdateEventCopyWith<$Res> {
  _$LessonFormUpdateEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$updatelessonImplCopyWith<$Res> {
  factory _$$updatelessonImplCopyWith(
          _$updatelessonImpl value, $Res Function(_$updatelessonImpl) then) =
      __$$updatelessonImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context, String id, Map<dynamic, dynamic> data});
}

/// @nodoc
class __$$updatelessonImplCopyWithImpl<$Res>
    extends _$LessonFormUpdateEventCopyWithImpl<$Res, _$updatelessonImpl>
    implements _$$updatelessonImplCopyWith<$Res> {
  __$$updatelessonImplCopyWithImpl(
      _$updatelessonImpl _value, $Res Function(_$updatelessonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? id = null,
    Object? data = null,
  }) {
    return _then(_$updatelessonImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
    ));
  }
}

/// @nodoc

class _$updatelessonImpl implements _updatelesson {
  const _$updatelessonImpl(
      {required this.context,
      required this.id,
      required final Map<dynamic, dynamic> data})
      : _data = data;

  @override
  final BuildContext context;
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
  String toString() {
    return 'LessonFormUpdateEvent.updatelesson(context: $context, id: $id, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$updatelessonImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, context, id, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$updatelessonImplCopyWith<_$updatelessonImpl> get copyWith =>
      __$$updatelessonImplCopyWithImpl<_$updatelessonImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuildContext context, String id, Map<dynamic, dynamic> data)
        updatelesson,
    required TResult Function() cancelButtonClick,
    required TResult Function(String value) dropDownpiker,
    required TResult Function(String value, String pikedImage)
        givingInitialDropDownValue,
    required TResult Function() imagePiking,
  }) {
    return updatelesson(context, id, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            BuildContext context, String id, Map<dynamic, dynamic> data)?
        updatelesson,
    TResult? Function()? cancelButtonClick,
    TResult? Function(String value)? dropDownpiker,
    TResult? Function(String value, String pikedImage)?
        givingInitialDropDownValue,
    TResult? Function()? imagePiking,
  }) {
    return updatelesson?.call(context, id, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            BuildContext context, String id, Map<dynamic, dynamic> data)?
        updatelesson,
    TResult Function()? cancelButtonClick,
    TResult Function(String value)? dropDownpiker,
    TResult Function(String value, String pikedImage)?
        givingInitialDropDownValue,
    TResult Function()? imagePiking,
    required TResult orElse(),
  }) {
    if (updatelesson != null) {
      return updatelesson(context, id, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_updatelesson value) updatelesson,
    required TResult Function(_cancelButtonClick value) cancelButtonClick,
    required TResult Function(_dropDownpiker value) dropDownpiker,
    required TResult Function(_givingInitialDropDownValue value)
        givingInitialDropDownValue,
    required TResult Function(_imagePiking value) imagePiking,
  }) {
    return updatelesson(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_updatelesson value)? updatelesson,
    TResult? Function(_cancelButtonClick value)? cancelButtonClick,
    TResult? Function(_dropDownpiker value)? dropDownpiker,
    TResult? Function(_givingInitialDropDownValue value)?
        givingInitialDropDownValue,
    TResult? Function(_imagePiking value)? imagePiking,
  }) {
    return updatelesson?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_updatelesson value)? updatelesson,
    TResult Function(_cancelButtonClick value)? cancelButtonClick,
    TResult Function(_dropDownpiker value)? dropDownpiker,
    TResult Function(_givingInitialDropDownValue value)?
        givingInitialDropDownValue,
    TResult Function(_imagePiking value)? imagePiking,
    required TResult orElse(),
  }) {
    if (updatelesson != null) {
      return updatelesson(this);
    }
    return orElse();
  }
}

abstract class _updatelesson implements LessonFormUpdateEvent {
  const factory _updatelesson(
      {required final BuildContext context,
      required final String id,
      required final Map<dynamic, dynamic> data}) = _$updatelessonImpl;

  BuildContext get context;
  String get id;
  Map<dynamic, dynamic> get data;
  @JsonKey(ignore: true)
  _$$updatelessonImplCopyWith<_$updatelessonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$cancelButtonClickImplCopyWith<$Res> {
  factory _$$cancelButtonClickImplCopyWith(_$cancelButtonClickImpl value,
          $Res Function(_$cancelButtonClickImpl) then) =
      __$$cancelButtonClickImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$cancelButtonClickImplCopyWithImpl<$Res>
    extends _$LessonFormUpdateEventCopyWithImpl<$Res, _$cancelButtonClickImpl>
    implements _$$cancelButtonClickImplCopyWith<$Res> {
  __$$cancelButtonClickImplCopyWithImpl(_$cancelButtonClickImpl _value,
      $Res Function(_$cancelButtonClickImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$cancelButtonClickImpl implements _cancelButtonClick {
  const _$cancelButtonClickImpl();

  @override
  String toString() {
    return 'LessonFormUpdateEvent.cancelButtonClick()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$cancelButtonClickImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuildContext context, String id, Map<dynamic, dynamic> data)
        updatelesson,
    required TResult Function() cancelButtonClick,
    required TResult Function(String value) dropDownpiker,
    required TResult Function(String value, String pikedImage)
        givingInitialDropDownValue,
    required TResult Function() imagePiking,
  }) {
    return cancelButtonClick();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            BuildContext context, String id, Map<dynamic, dynamic> data)?
        updatelesson,
    TResult? Function()? cancelButtonClick,
    TResult? Function(String value)? dropDownpiker,
    TResult? Function(String value, String pikedImage)?
        givingInitialDropDownValue,
    TResult? Function()? imagePiking,
  }) {
    return cancelButtonClick?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            BuildContext context, String id, Map<dynamic, dynamic> data)?
        updatelesson,
    TResult Function()? cancelButtonClick,
    TResult Function(String value)? dropDownpiker,
    TResult Function(String value, String pikedImage)?
        givingInitialDropDownValue,
    TResult Function()? imagePiking,
    required TResult orElse(),
  }) {
    if (cancelButtonClick != null) {
      return cancelButtonClick();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_updatelesson value) updatelesson,
    required TResult Function(_cancelButtonClick value) cancelButtonClick,
    required TResult Function(_dropDownpiker value) dropDownpiker,
    required TResult Function(_givingInitialDropDownValue value)
        givingInitialDropDownValue,
    required TResult Function(_imagePiking value) imagePiking,
  }) {
    return cancelButtonClick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_updatelesson value)? updatelesson,
    TResult? Function(_cancelButtonClick value)? cancelButtonClick,
    TResult? Function(_dropDownpiker value)? dropDownpiker,
    TResult? Function(_givingInitialDropDownValue value)?
        givingInitialDropDownValue,
    TResult? Function(_imagePiking value)? imagePiking,
  }) {
    return cancelButtonClick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_updatelesson value)? updatelesson,
    TResult Function(_cancelButtonClick value)? cancelButtonClick,
    TResult Function(_dropDownpiker value)? dropDownpiker,
    TResult Function(_givingInitialDropDownValue value)?
        givingInitialDropDownValue,
    TResult Function(_imagePiking value)? imagePiking,
    required TResult orElse(),
  }) {
    if (cancelButtonClick != null) {
      return cancelButtonClick(this);
    }
    return orElse();
  }
}

abstract class _cancelButtonClick implements LessonFormUpdateEvent {
  const factory _cancelButtonClick() = _$cancelButtonClickImpl;
}

/// @nodoc
abstract class _$$dropDownpikerImplCopyWith<$Res> {
  factory _$$dropDownpikerImplCopyWith(
          _$dropDownpikerImpl value, $Res Function(_$dropDownpikerImpl) then) =
      __$$dropDownpikerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$dropDownpikerImplCopyWithImpl<$Res>
    extends _$LessonFormUpdateEventCopyWithImpl<$Res, _$dropDownpikerImpl>
    implements _$$dropDownpikerImplCopyWith<$Res> {
  __$$dropDownpikerImplCopyWithImpl(
      _$dropDownpikerImpl _value, $Res Function(_$dropDownpikerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$dropDownpikerImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$dropDownpikerImpl implements _dropDownpiker {
  const _$dropDownpikerImpl({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'LessonFormUpdateEvent.dropDownpiker(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$dropDownpikerImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$dropDownpikerImplCopyWith<_$dropDownpikerImpl> get copyWith =>
      __$$dropDownpikerImplCopyWithImpl<_$dropDownpikerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuildContext context, String id, Map<dynamic, dynamic> data)
        updatelesson,
    required TResult Function() cancelButtonClick,
    required TResult Function(String value) dropDownpiker,
    required TResult Function(String value, String pikedImage)
        givingInitialDropDownValue,
    required TResult Function() imagePiking,
  }) {
    return dropDownpiker(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            BuildContext context, String id, Map<dynamic, dynamic> data)?
        updatelesson,
    TResult? Function()? cancelButtonClick,
    TResult? Function(String value)? dropDownpiker,
    TResult? Function(String value, String pikedImage)?
        givingInitialDropDownValue,
    TResult? Function()? imagePiking,
  }) {
    return dropDownpiker?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            BuildContext context, String id, Map<dynamic, dynamic> data)?
        updatelesson,
    TResult Function()? cancelButtonClick,
    TResult Function(String value)? dropDownpiker,
    TResult Function(String value, String pikedImage)?
        givingInitialDropDownValue,
    TResult Function()? imagePiking,
    required TResult orElse(),
  }) {
    if (dropDownpiker != null) {
      return dropDownpiker(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_updatelesson value) updatelesson,
    required TResult Function(_cancelButtonClick value) cancelButtonClick,
    required TResult Function(_dropDownpiker value) dropDownpiker,
    required TResult Function(_givingInitialDropDownValue value)
        givingInitialDropDownValue,
    required TResult Function(_imagePiking value) imagePiking,
  }) {
    return dropDownpiker(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_updatelesson value)? updatelesson,
    TResult? Function(_cancelButtonClick value)? cancelButtonClick,
    TResult? Function(_dropDownpiker value)? dropDownpiker,
    TResult? Function(_givingInitialDropDownValue value)?
        givingInitialDropDownValue,
    TResult? Function(_imagePiking value)? imagePiking,
  }) {
    return dropDownpiker?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_updatelesson value)? updatelesson,
    TResult Function(_cancelButtonClick value)? cancelButtonClick,
    TResult Function(_dropDownpiker value)? dropDownpiker,
    TResult Function(_givingInitialDropDownValue value)?
        givingInitialDropDownValue,
    TResult Function(_imagePiking value)? imagePiking,
    required TResult orElse(),
  }) {
    if (dropDownpiker != null) {
      return dropDownpiker(this);
    }
    return orElse();
  }
}

abstract class _dropDownpiker implements LessonFormUpdateEvent {
  const factory _dropDownpiker({required final String value}) =
      _$dropDownpikerImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$dropDownpikerImplCopyWith<_$dropDownpikerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$givingInitialDropDownValueImplCopyWith<$Res> {
  factory _$$givingInitialDropDownValueImplCopyWith(
          _$givingInitialDropDownValueImpl value,
          $Res Function(_$givingInitialDropDownValueImpl) then) =
      __$$givingInitialDropDownValueImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value, String pikedImage});
}

/// @nodoc
class __$$givingInitialDropDownValueImplCopyWithImpl<$Res>
    extends _$LessonFormUpdateEventCopyWithImpl<$Res,
        _$givingInitialDropDownValueImpl>
    implements _$$givingInitialDropDownValueImplCopyWith<$Res> {
  __$$givingInitialDropDownValueImplCopyWithImpl(
      _$givingInitialDropDownValueImpl _value,
      $Res Function(_$givingInitialDropDownValueImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? pikedImage = null,
  }) {
    return _then(_$givingInitialDropDownValueImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      pikedImage: null == pikedImage
          ? _value.pikedImage
          : pikedImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$givingInitialDropDownValueImpl implements _givingInitialDropDownValue {
  const _$givingInitialDropDownValueImpl(
      {required this.value, required this.pikedImage});

  @override
  final String value;
  @override
  final String pikedImage;

  @override
  String toString() {
    return 'LessonFormUpdateEvent.givingInitialDropDownValue(value: $value, pikedImage: $pikedImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$givingInitialDropDownValueImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.pikedImage, pikedImage) ||
                other.pikedImage == pikedImage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, pikedImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$givingInitialDropDownValueImplCopyWith<_$givingInitialDropDownValueImpl>
      get copyWith => __$$givingInitialDropDownValueImplCopyWithImpl<
          _$givingInitialDropDownValueImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuildContext context, String id, Map<dynamic, dynamic> data)
        updatelesson,
    required TResult Function() cancelButtonClick,
    required TResult Function(String value) dropDownpiker,
    required TResult Function(String value, String pikedImage)
        givingInitialDropDownValue,
    required TResult Function() imagePiking,
  }) {
    return givingInitialDropDownValue(value, pikedImage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            BuildContext context, String id, Map<dynamic, dynamic> data)?
        updatelesson,
    TResult? Function()? cancelButtonClick,
    TResult? Function(String value)? dropDownpiker,
    TResult? Function(String value, String pikedImage)?
        givingInitialDropDownValue,
    TResult? Function()? imagePiking,
  }) {
    return givingInitialDropDownValue?.call(value, pikedImage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            BuildContext context, String id, Map<dynamic, dynamic> data)?
        updatelesson,
    TResult Function()? cancelButtonClick,
    TResult Function(String value)? dropDownpiker,
    TResult Function(String value, String pikedImage)?
        givingInitialDropDownValue,
    TResult Function()? imagePiking,
    required TResult orElse(),
  }) {
    if (givingInitialDropDownValue != null) {
      return givingInitialDropDownValue(value, pikedImage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_updatelesson value) updatelesson,
    required TResult Function(_cancelButtonClick value) cancelButtonClick,
    required TResult Function(_dropDownpiker value) dropDownpiker,
    required TResult Function(_givingInitialDropDownValue value)
        givingInitialDropDownValue,
    required TResult Function(_imagePiking value) imagePiking,
  }) {
    return givingInitialDropDownValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_updatelesson value)? updatelesson,
    TResult? Function(_cancelButtonClick value)? cancelButtonClick,
    TResult? Function(_dropDownpiker value)? dropDownpiker,
    TResult? Function(_givingInitialDropDownValue value)?
        givingInitialDropDownValue,
    TResult? Function(_imagePiking value)? imagePiking,
  }) {
    return givingInitialDropDownValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_updatelesson value)? updatelesson,
    TResult Function(_cancelButtonClick value)? cancelButtonClick,
    TResult Function(_dropDownpiker value)? dropDownpiker,
    TResult Function(_givingInitialDropDownValue value)?
        givingInitialDropDownValue,
    TResult Function(_imagePiking value)? imagePiking,
    required TResult orElse(),
  }) {
    if (givingInitialDropDownValue != null) {
      return givingInitialDropDownValue(this);
    }
    return orElse();
  }
}

abstract class _givingInitialDropDownValue implements LessonFormUpdateEvent {
  const factory _givingInitialDropDownValue(
      {required final String value,
      required final String pikedImage}) = _$givingInitialDropDownValueImpl;

  String get value;
  String get pikedImage;
  @JsonKey(ignore: true)
  _$$givingInitialDropDownValueImplCopyWith<_$givingInitialDropDownValueImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$imagePikingImplCopyWith<$Res> {
  factory _$$imagePikingImplCopyWith(
          _$imagePikingImpl value, $Res Function(_$imagePikingImpl) then) =
      __$$imagePikingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$imagePikingImplCopyWithImpl<$Res>
    extends _$LessonFormUpdateEventCopyWithImpl<$Res, _$imagePikingImpl>
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
    return 'LessonFormUpdateEvent.imagePiking()';
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
    required TResult Function(
            BuildContext context, String id, Map<dynamic, dynamic> data)
        updatelesson,
    required TResult Function() cancelButtonClick,
    required TResult Function(String value) dropDownpiker,
    required TResult Function(String value, String pikedImage)
        givingInitialDropDownValue,
    required TResult Function() imagePiking,
  }) {
    return imagePiking();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            BuildContext context, String id, Map<dynamic, dynamic> data)?
        updatelesson,
    TResult? Function()? cancelButtonClick,
    TResult? Function(String value)? dropDownpiker,
    TResult? Function(String value, String pikedImage)?
        givingInitialDropDownValue,
    TResult? Function()? imagePiking,
  }) {
    return imagePiking?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            BuildContext context, String id, Map<dynamic, dynamic> data)?
        updatelesson,
    TResult Function()? cancelButtonClick,
    TResult Function(String value)? dropDownpiker,
    TResult Function(String value, String pikedImage)?
        givingInitialDropDownValue,
    TResult Function()? imagePiking,
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
    required TResult Function(_updatelesson value) updatelesson,
    required TResult Function(_cancelButtonClick value) cancelButtonClick,
    required TResult Function(_dropDownpiker value) dropDownpiker,
    required TResult Function(_givingInitialDropDownValue value)
        givingInitialDropDownValue,
    required TResult Function(_imagePiking value) imagePiking,
  }) {
    return imagePiking(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_updatelesson value)? updatelesson,
    TResult? Function(_cancelButtonClick value)? cancelButtonClick,
    TResult? Function(_dropDownpiker value)? dropDownpiker,
    TResult? Function(_givingInitialDropDownValue value)?
        givingInitialDropDownValue,
    TResult? Function(_imagePiking value)? imagePiking,
  }) {
    return imagePiking?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_updatelesson value)? updatelesson,
    TResult Function(_cancelButtonClick value)? cancelButtonClick,
    TResult Function(_dropDownpiker value)? dropDownpiker,
    TResult Function(_givingInitialDropDownValue value)?
        givingInitialDropDownValue,
    TResult Function(_imagePiking value)? imagePiking,
    required TResult orElse(),
  }) {
    if (imagePiking != null) {
      return imagePiking(this);
    }
    return orElse();
  }
}

abstract class _imagePiking implements LessonFormUpdateEvent {
  const factory _imagePiking() = _$imagePikingImpl;
}

/// @nodoc
mixin _$LessonFormUpdateState {
  String? get pikedImage => throw _privateConstructorUsedError;
  String get dropdownPiker => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LessonFormUpdateStateCopyWith<LessonFormUpdateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonFormUpdateStateCopyWith<$Res> {
  factory $LessonFormUpdateStateCopyWith(LessonFormUpdateState value,
          $Res Function(LessonFormUpdateState) then) =
      _$LessonFormUpdateStateCopyWithImpl<$Res, LessonFormUpdateState>;
  @useResult
  $Res call({String? pikedImage, String dropdownPiker});
}

/// @nodoc
class _$LessonFormUpdateStateCopyWithImpl<$Res,
        $Val extends LessonFormUpdateState>
    implements $LessonFormUpdateStateCopyWith<$Res> {
  _$LessonFormUpdateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pikedImage = freezed,
    Object? dropdownPiker = null,
  }) {
    return _then(_value.copyWith(
      pikedImage: freezed == pikedImage
          ? _value.pikedImage
          : pikedImage // ignore: cast_nullable_to_non_nullable
              as String?,
      dropdownPiker: null == dropdownPiker
          ? _value.dropdownPiker
          : dropdownPiker // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LessonFormUpdateStateImplCopyWith<$Res>
    implements $LessonFormUpdateStateCopyWith<$Res> {
  factory _$$LessonFormUpdateStateImplCopyWith(
          _$LessonFormUpdateStateImpl value,
          $Res Function(_$LessonFormUpdateStateImpl) then) =
      __$$LessonFormUpdateStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? pikedImage, String dropdownPiker});
}

/// @nodoc
class __$$LessonFormUpdateStateImplCopyWithImpl<$Res>
    extends _$LessonFormUpdateStateCopyWithImpl<$Res,
        _$LessonFormUpdateStateImpl>
    implements _$$LessonFormUpdateStateImplCopyWith<$Res> {
  __$$LessonFormUpdateStateImplCopyWithImpl(_$LessonFormUpdateStateImpl _value,
      $Res Function(_$LessonFormUpdateStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pikedImage = freezed,
    Object? dropdownPiker = null,
  }) {
    return _then(_$LessonFormUpdateStateImpl(
      pikedImage: freezed == pikedImage
          ? _value.pikedImage
          : pikedImage // ignore: cast_nullable_to_non_nullable
              as String?,
      dropdownPiker: null == dropdownPiker
          ? _value.dropdownPiker
          : dropdownPiker // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LessonFormUpdateStateImpl implements _LessonFormUpdateState {
  const _$LessonFormUpdateStateImpl(
      {this.pikedImage, required this.dropdownPiker});

  @override
  final String? pikedImage;
  @override
  final String dropdownPiker;

  @override
  String toString() {
    return 'LessonFormUpdateState(pikedImage: $pikedImage, dropdownPiker: $dropdownPiker)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonFormUpdateStateImpl &&
            (identical(other.pikedImage, pikedImage) ||
                other.pikedImage == pikedImage) &&
            (identical(other.dropdownPiker, dropdownPiker) ||
                other.dropdownPiker == dropdownPiker));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pikedImage, dropdownPiker);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonFormUpdateStateImplCopyWith<_$LessonFormUpdateStateImpl>
      get copyWith => __$$LessonFormUpdateStateImplCopyWithImpl<
          _$LessonFormUpdateStateImpl>(this, _$identity);
}

abstract class _LessonFormUpdateState implements LessonFormUpdateState {
  const factory _LessonFormUpdateState(
      {final String? pikedImage,
      required final String dropdownPiker}) = _$LessonFormUpdateStateImpl;

  @override
  String? get pikedImage;
  @override
  String get dropdownPiker;
  @override
  @JsonKey(ignore: true)
  _$$LessonFormUpdateStateImplCopyWith<_$LessonFormUpdateStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
