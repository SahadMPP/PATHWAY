// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tutorial_update_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TutorialUpdateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) dropDownLevel,
    required TResult Function(
            BuildContext context, Map<dynamic, dynamic> data, String id)
        updateTutoral,
    required TResult Function(String value) givingInitialValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? dropDownLevel,
    TResult? Function(
            BuildContext context, Map<dynamic, dynamic> data, String id)?
        updateTutoral,
    TResult? Function(String value)? givingInitialValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? dropDownLevel,
    TResult Function(
            BuildContext context, Map<dynamic, dynamic> data, String id)?
        updateTutoral,
    TResult Function(String value)? givingInitialValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_dropDownLevel value) dropDownLevel,
    required TResult Function(_updateTutoral value) updateTutoral,
    required TResult Function(_givingInitialValue value) givingInitialValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_dropDownLevel value)? dropDownLevel,
    TResult? Function(_updateTutoral value)? updateTutoral,
    TResult? Function(_givingInitialValue value)? givingInitialValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_dropDownLevel value)? dropDownLevel,
    TResult Function(_updateTutoral value)? updateTutoral,
    TResult Function(_givingInitialValue value)? givingInitialValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TutorialUpdateEventCopyWith<$Res> {
  factory $TutorialUpdateEventCopyWith(
          TutorialUpdateEvent value, $Res Function(TutorialUpdateEvent) then) =
      _$TutorialUpdateEventCopyWithImpl<$Res, TutorialUpdateEvent>;
}

/// @nodoc
class _$TutorialUpdateEventCopyWithImpl<$Res, $Val extends TutorialUpdateEvent>
    implements $TutorialUpdateEventCopyWith<$Res> {
  _$TutorialUpdateEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$dropDownLevelImplCopyWith<$Res> {
  factory _$$dropDownLevelImplCopyWith(
          _$dropDownLevelImpl value, $Res Function(_$dropDownLevelImpl) then) =
      __$$dropDownLevelImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$dropDownLevelImplCopyWithImpl<$Res>
    extends _$TutorialUpdateEventCopyWithImpl<$Res, _$dropDownLevelImpl>
    implements _$$dropDownLevelImplCopyWith<$Res> {
  __$$dropDownLevelImplCopyWithImpl(
      _$dropDownLevelImpl _value, $Res Function(_$dropDownLevelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$dropDownLevelImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$dropDownLevelImpl implements _dropDownLevel {
  const _$dropDownLevelImpl({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'TutorialUpdateEvent.dropDownLevel(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$dropDownLevelImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$dropDownLevelImplCopyWith<_$dropDownLevelImpl> get copyWith =>
      __$$dropDownLevelImplCopyWithImpl<_$dropDownLevelImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) dropDownLevel,
    required TResult Function(
            BuildContext context, Map<dynamic, dynamic> data, String id)
        updateTutoral,
    required TResult Function(String value) givingInitialValue,
  }) {
    return dropDownLevel(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? dropDownLevel,
    TResult? Function(
            BuildContext context, Map<dynamic, dynamic> data, String id)?
        updateTutoral,
    TResult? Function(String value)? givingInitialValue,
  }) {
    return dropDownLevel?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? dropDownLevel,
    TResult Function(
            BuildContext context, Map<dynamic, dynamic> data, String id)?
        updateTutoral,
    TResult Function(String value)? givingInitialValue,
    required TResult orElse(),
  }) {
    if (dropDownLevel != null) {
      return dropDownLevel(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_dropDownLevel value) dropDownLevel,
    required TResult Function(_updateTutoral value) updateTutoral,
    required TResult Function(_givingInitialValue value) givingInitialValue,
  }) {
    return dropDownLevel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_dropDownLevel value)? dropDownLevel,
    TResult? Function(_updateTutoral value)? updateTutoral,
    TResult? Function(_givingInitialValue value)? givingInitialValue,
  }) {
    return dropDownLevel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_dropDownLevel value)? dropDownLevel,
    TResult Function(_updateTutoral value)? updateTutoral,
    TResult Function(_givingInitialValue value)? givingInitialValue,
    required TResult orElse(),
  }) {
    if (dropDownLevel != null) {
      return dropDownLevel(this);
    }
    return orElse();
  }
}

abstract class _dropDownLevel implements TutorialUpdateEvent {
  const factory _dropDownLevel({required final String value}) =
      _$dropDownLevelImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$dropDownLevelImplCopyWith<_$dropDownLevelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$updateTutoralImplCopyWith<$Res> {
  factory _$$updateTutoralImplCopyWith(
          _$updateTutoralImpl value, $Res Function(_$updateTutoralImpl) then) =
      __$$updateTutoralImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context, Map<dynamic, dynamic> data, String id});
}

/// @nodoc
class __$$updateTutoralImplCopyWithImpl<$Res>
    extends _$TutorialUpdateEventCopyWithImpl<$Res, _$updateTutoralImpl>
    implements _$$updateTutoralImplCopyWith<$Res> {
  __$$updateTutoralImplCopyWithImpl(
      _$updateTutoralImpl _value, $Res Function(_$updateTutoralImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? data = null,
    Object? id = null,
  }) {
    return _then(_$updateTutoralImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$updateTutoralImpl implements _updateTutoral {
  const _$updateTutoralImpl(
      {required this.context,
      required final Map<dynamic, dynamic> data,
      required this.id})
      : _data = data;

  @override
  final BuildContext context;
  final Map<dynamic, dynamic> _data;
  @override
  Map<dynamic, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  final String id;

  @override
  String toString() {
    return 'TutorialUpdateEvent.updateTutoral(context: $context, data: $data, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$updateTutoralImpl &&
            (identical(other.context, context) || other.context == context) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, context, const DeepCollectionEquality().hash(_data), id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$updateTutoralImplCopyWith<_$updateTutoralImpl> get copyWith =>
      __$$updateTutoralImplCopyWithImpl<_$updateTutoralImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) dropDownLevel,
    required TResult Function(
            BuildContext context, Map<dynamic, dynamic> data, String id)
        updateTutoral,
    required TResult Function(String value) givingInitialValue,
  }) {
    return updateTutoral(context, data, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? dropDownLevel,
    TResult? Function(
            BuildContext context, Map<dynamic, dynamic> data, String id)?
        updateTutoral,
    TResult? Function(String value)? givingInitialValue,
  }) {
    return updateTutoral?.call(context, data, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? dropDownLevel,
    TResult Function(
            BuildContext context, Map<dynamic, dynamic> data, String id)?
        updateTutoral,
    TResult Function(String value)? givingInitialValue,
    required TResult orElse(),
  }) {
    if (updateTutoral != null) {
      return updateTutoral(context, data, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_dropDownLevel value) dropDownLevel,
    required TResult Function(_updateTutoral value) updateTutoral,
    required TResult Function(_givingInitialValue value) givingInitialValue,
  }) {
    return updateTutoral(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_dropDownLevel value)? dropDownLevel,
    TResult? Function(_updateTutoral value)? updateTutoral,
    TResult? Function(_givingInitialValue value)? givingInitialValue,
  }) {
    return updateTutoral?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_dropDownLevel value)? dropDownLevel,
    TResult Function(_updateTutoral value)? updateTutoral,
    TResult Function(_givingInitialValue value)? givingInitialValue,
    required TResult orElse(),
  }) {
    if (updateTutoral != null) {
      return updateTutoral(this);
    }
    return orElse();
  }
}

abstract class _updateTutoral implements TutorialUpdateEvent {
  const factory _updateTutoral(
      {required final BuildContext context,
      required final Map<dynamic, dynamic> data,
      required final String id}) = _$updateTutoralImpl;

  BuildContext get context;
  Map<dynamic, dynamic> get data;
  String get id;
  @JsonKey(ignore: true)
  _$$updateTutoralImplCopyWith<_$updateTutoralImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$givingInitialValueImplCopyWith<$Res> {
  factory _$$givingInitialValueImplCopyWith(_$givingInitialValueImpl value,
          $Res Function(_$givingInitialValueImpl) then) =
      __$$givingInitialValueImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$givingInitialValueImplCopyWithImpl<$Res>
    extends _$TutorialUpdateEventCopyWithImpl<$Res, _$givingInitialValueImpl>
    implements _$$givingInitialValueImplCopyWith<$Res> {
  __$$givingInitialValueImplCopyWithImpl(_$givingInitialValueImpl _value,
      $Res Function(_$givingInitialValueImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$givingInitialValueImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$givingInitialValueImpl implements _givingInitialValue {
  const _$givingInitialValueImpl({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'TutorialUpdateEvent.givingInitialValue(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$givingInitialValueImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$givingInitialValueImplCopyWith<_$givingInitialValueImpl> get copyWith =>
      __$$givingInitialValueImplCopyWithImpl<_$givingInitialValueImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) dropDownLevel,
    required TResult Function(
            BuildContext context, Map<dynamic, dynamic> data, String id)
        updateTutoral,
    required TResult Function(String value) givingInitialValue,
  }) {
    return givingInitialValue(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? dropDownLevel,
    TResult? Function(
            BuildContext context, Map<dynamic, dynamic> data, String id)?
        updateTutoral,
    TResult? Function(String value)? givingInitialValue,
  }) {
    return givingInitialValue?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? dropDownLevel,
    TResult Function(
            BuildContext context, Map<dynamic, dynamic> data, String id)?
        updateTutoral,
    TResult Function(String value)? givingInitialValue,
    required TResult orElse(),
  }) {
    if (givingInitialValue != null) {
      return givingInitialValue(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_dropDownLevel value) dropDownLevel,
    required TResult Function(_updateTutoral value) updateTutoral,
    required TResult Function(_givingInitialValue value) givingInitialValue,
  }) {
    return givingInitialValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_dropDownLevel value)? dropDownLevel,
    TResult? Function(_updateTutoral value)? updateTutoral,
    TResult? Function(_givingInitialValue value)? givingInitialValue,
  }) {
    return givingInitialValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_dropDownLevel value)? dropDownLevel,
    TResult Function(_updateTutoral value)? updateTutoral,
    TResult Function(_givingInitialValue value)? givingInitialValue,
    required TResult orElse(),
  }) {
    if (givingInitialValue != null) {
      return givingInitialValue(this);
    }
    return orElse();
  }
}

abstract class _givingInitialValue implements TutorialUpdateEvent {
  const factory _givingInitialValue({required final String value}) =
      _$givingInitialValueImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$givingInitialValueImplCopyWith<_$givingInitialValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TutorialUpdateState {
  String get dropDownLevel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TutorialUpdateStateCopyWith<TutorialUpdateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TutorialUpdateStateCopyWith<$Res> {
  factory $TutorialUpdateStateCopyWith(
          TutorialUpdateState value, $Res Function(TutorialUpdateState) then) =
      _$TutorialUpdateStateCopyWithImpl<$Res, TutorialUpdateState>;
  @useResult
  $Res call({String dropDownLevel});
}

/// @nodoc
class _$TutorialUpdateStateCopyWithImpl<$Res, $Val extends TutorialUpdateState>
    implements $TutorialUpdateStateCopyWith<$Res> {
  _$TutorialUpdateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dropDownLevel = null,
  }) {
    return _then(_value.copyWith(
      dropDownLevel: null == dropDownLevel
          ? _value.dropDownLevel
          : dropDownLevel // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TutorialUpdateStateImplCopyWith<$Res>
    implements $TutorialUpdateStateCopyWith<$Res> {
  factory _$$TutorialUpdateStateImplCopyWith(_$TutorialUpdateStateImpl value,
          $Res Function(_$TutorialUpdateStateImpl) then) =
      __$$TutorialUpdateStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String dropDownLevel});
}

/// @nodoc
class __$$TutorialUpdateStateImplCopyWithImpl<$Res>
    extends _$TutorialUpdateStateCopyWithImpl<$Res, _$TutorialUpdateStateImpl>
    implements _$$TutorialUpdateStateImplCopyWith<$Res> {
  __$$TutorialUpdateStateImplCopyWithImpl(_$TutorialUpdateStateImpl _value,
      $Res Function(_$TutorialUpdateStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dropDownLevel = null,
  }) {
    return _then(_$TutorialUpdateStateImpl(
      dropDownLevel: null == dropDownLevel
          ? _value.dropDownLevel
          : dropDownLevel // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TutorialUpdateStateImpl implements _TutorialUpdateState {
  const _$TutorialUpdateStateImpl({required this.dropDownLevel});

  @override
  final String dropDownLevel;

  @override
  String toString() {
    return 'TutorialUpdateState(dropDownLevel: $dropDownLevel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TutorialUpdateStateImpl &&
            (identical(other.dropDownLevel, dropDownLevel) ||
                other.dropDownLevel == dropDownLevel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dropDownLevel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TutorialUpdateStateImplCopyWith<_$TutorialUpdateStateImpl> get copyWith =>
      __$$TutorialUpdateStateImplCopyWithImpl<_$TutorialUpdateStateImpl>(
          this, _$identity);
}

abstract class _TutorialUpdateState implements TutorialUpdateState {
  const factory _TutorialUpdateState({required final String dropDownLevel}) =
      _$TutorialUpdateStateImpl;

  @override
  String get dropDownLevel;
  @override
  @JsonKey(ignore: true)
  _$$TutorialUpdateStateImplCopyWith<_$TutorialUpdateStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
