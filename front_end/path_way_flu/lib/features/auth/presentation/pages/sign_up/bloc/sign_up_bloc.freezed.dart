// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignUpEvent {
  String get nameController => throw _privateConstructorUsedError;
  String get emailController => throw _privateConstructorUsedError;
  String get passwordController => throw _privateConstructorUsedError;
  BuildContext get context => throw _privateConstructorUsedError;
  String get directionText => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String nameController,
            String emailController,
            String passwordController,
            BuildContext context,
            String directionText)
        registerUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String nameController,
            String emailController,
            String passwordController,
            BuildContext context,
            String directionText)?
        registerUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String nameController,
            String emailController,
            String passwordController,
            BuildContext context,
            String directionText)?
        registerUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_registerUser value) registerUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_registerUser value)? registerUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_registerUser value)? registerUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpEventCopyWith<SignUpEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpEventCopyWith<$Res> {
  factory $SignUpEventCopyWith(
          SignUpEvent value, $Res Function(SignUpEvent) then) =
      _$SignUpEventCopyWithImpl<$Res, SignUpEvent>;
  @useResult
  $Res call(
      {String nameController,
      String emailController,
      String passwordController,
      BuildContext context,
      String directionText});
}

/// @nodoc
class _$SignUpEventCopyWithImpl<$Res, $Val extends SignUpEvent>
    implements $SignUpEventCopyWith<$Res> {
  _$SignUpEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameController = null,
    Object? emailController = null,
    Object? passwordController = null,
    Object? context = null,
    Object? directionText = null,
  }) {
    return _then(_value.copyWith(
      nameController: null == nameController
          ? _value.nameController
          : nameController // ignore: cast_nullable_to_non_nullable
              as String,
      emailController: null == emailController
          ? _value.emailController
          : emailController // ignore: cast_nullable_to_non_nullable
              as String,
      passwordController: null == passwordController
          ? _value.passwordController
          : passwordController // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      directionText: null == directionText
          ? _value.directionText
          : directionText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$registerUserImplCopyWith<$Res>
    implements $SignUpEventCopyWith<$Res> {
  factory _$$registerUserImplCopyWith(
          _$registerUserImpl value, $Res Function(_$registerUserImpl) then) =
      __$$registerUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String nameController,
      String emailController,
      String passwordController,
      BuildContext context,
      String directionText});
}

/// @nodoc
class __$$registerUserImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$registerUserImpl>
    implements _$$registerUserImplCopyWith<$Res> {
  __$$registerUserImplCopyWithImpl(
      _$registerUserImpl _value, $Res Function(_$registerUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameController = null,
    Object? emailController = null,
    Object? passwordController = null,
    Object? context = null,
    Object? directionText = null,
  }) {
    return _then(_$registerUserImpl(
      nameController: null == nameController
          ? _value.nameController
          : nameController // ignore: cast_nullable_to_non_nullable
              as String,
      emailController: null == emailController
          ? _value.emailController
          : emailController // ignore: cast_nullable_to_non_nullable
              as String,
      passwordController: null == passwordController
          ? _value.passwordController
          : passwordController // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      directionText: null == directionText
          ? _value.directionText
          : directionText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$registerUserImpl implements _registerUser {
  const _$registerUserImpl(
      {required this.nameController,
      required this.emailController,
      required this.passwordController,
      required this.context,
      required this.directionText});

  @override
  final String nameController;
  @override
  final String emailController;
  @override
  final String passwordController;
  @override
  final BuildContext context;
  @override
  final String directionText;

  @override
  String toString() {
    return 'SignUpEvent.registerUser(nameController: $nameController, emailController: $emailController, passwordController: $passwordController, context: $context, directionText: $directionText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$registerUserImpl &&
            (identical(other.nameController, nameController) ||
                other.nameController == nameController) &&
            (identical(other.emailController, emailController) ||
                other.emailController == emailController) &&
            (identical(other.passwordController, passwordController) ||
                other.passwordController == passwordController) &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.directionText, directionText) ||
                other.directionText == directionText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nameController, emailController,
      passwordController, context, directionText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$registerUserImplCopyWith<_$registerUserImpl> get copyWith =>
      __$$registerUserImplCopyWithImpl<_$registerUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String nameController,
            String emailController,
            String passwordController,
            BuildContext context,
            String directionText)
        registerUser,
  }) {
    return registerUser(nameController, emailController, passwordController,
        context, directionText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String nameController,
            String emailController,
            String passwordController,
            BuildContext context,
            String directionText)?
        registerUser,
  }) {
    return registerUser?.call(nameController, emailController,
        passwordController, context, directionText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String nameController,
            String emailController,
            String passwordController,
            BuildContext context,
            String directionText)?
        registerUser,
    required TResult orElse(),
  }) {
    if (registerUser != null) {
      return registerUser(nameController, emailController, passwordController,
          context, directionText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_registerUser value) registerUser,
  }) {
    return registerUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_registerUser value)? registerUser,
  }) {
    return registerUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_registerUser value)? registerUser,
    required TResult orElse(),
  }) {
    if (registerUser != null) {
      return registerUser(this);
    }
    return orElse();
  }
}

abstract class _registerUser implements SignUpEvent {
  const factory _registerUser(
      {required final String nameController,
      required final String emailController,
      required final String passwordController,
      required final BuildContext context,
      required final String directionText}) = _$registerUserImpl;

  @override
  String get nameController;
  @override
  String get emailController;
  @override
  String get passwordController;
  @override
  BuildContext get context;
  @override
  String get directionText;
  @override
  @JsonKey(ignore: true)
  _$$registerUserImplCopyWith<_$registerUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignUpState {}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res, SignUpState>;
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res, $Val extends SignUpState>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignUpStateImplCopyWith<$Res> {
  factory _$$SignUpStateImplCopyWith(
          _$SignUpStateImpl value, $Res Function(_$SignUpStateImpl) then) =
      __$$SignUpStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpStateImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpStateImpl>
    implements _$$SignUpStateImplCopyWith<$Res> {
  __$$SignUpStateImplCopyWithImpl(
      _$SignUpStateImpl _value, $Res Function(_$SignUpStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignUpStateImpl implements _SignUpState {
  const _$SignUpStateImpl();

  @override
  String toString() {
    return 'SignUpState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignUpStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _SignUpState implements SignUpState {
  const factory _SignUpState() = _$SignUpStateImpl;
}
