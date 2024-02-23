// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignInEvent {
  String get emailController => throw _privateConstructorUsedError;
  String get passwordController => throw _privateConstructorUsedError;
  BuildContext get context => throw _privateConstructorUsedError;
  String get directionText => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailController, String passwordController,
            BuildContext context, String directionText)
        userlogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailController, String passwordController,
            BuildContext context, String directionText)?
        userlogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailController, String passwordController,
            BuildContext context, String directionText)?
        userlogin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_userlogin value) userlogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_userlogin value)? userlogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_userlogin value)? userlogin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInEventCopyWith<SignInEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInEventCopyWith<$Res> {
  factory $SignInEventCopyWith(
          SignInEvent value, $Res Function(SignInEvent) then) =
      _$SignInEventCopyWithImpl<$Res, SignInEvent>;
  @useResult
  $Res call(
      {String emailController,
      String passwordController,
      BuildContext context,
      String directionText});
}

/// @nodoc
class _$SignInEventCopyWithImpl<$Res, $Val extends SignInEvent>
    implements $SignInEventCopyWith<$Res> {
  _$SignInEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailController = null,
    Object? passwordController = null,
    Object? context = null,
    Object? directionText = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$userloginImplCopyWith<$Res>
    implements $SignInEventCopyWith<$Res> {
  factory _$$userloginImplCopyWith(
          _$userloginImpl value, $Res Function(_$userloginImpl) then) =
      __$$userloginImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String emailController,
      String passwordController,
      BuildContext context,
      String directionText});
}

/// @nodoc
class __$$userloginImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$userloginImpl>
    implements _$$userloginImplCopyWith<$Res> {
  __$$userloginImplCopyWithImpl(
      _$userloginImpl _value, $Res Function(_$userloginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailController = null,
    Object? passwordController = null,
    Object? context = null,
    Object? directionText = null,
  }) {
    return _then(_$userloginImpl(
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

class _$userloginImpl implements _userlogin {
  const _$userloginImpl(
      {required this.emailController,
      required this.passwordController,
      required this.context,
      required this.directionText});

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
    return 'SignInEvent.userlogin(emailController: $emailController, passwordController: $passwordController, context: $context, directionText: $directionText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$userloginImpl &&
            (identical(other.emailController, emailController) ||
                other.emailController == emailController) &&
            (identical(other.passwordController, passwordController) ||
                other.passwordController == passwordController) &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.directionText, directionText) ||
                other.directionText == directionText));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, emailController, passwordController, context, directionText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$userloginImplCopyWith<_$userloginImpl> get copyWith =>
      __$$userloginImplCopyWithImpl<_$userloginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailController, String passwordController,
            BuildContext context, String directionText)
        userlogin,
  }) {
    return userlogin(
        emailController, passwordController, context, directionText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailController, String passwordController,
            BuildContext context, String directionText)?
        userlogin,
  }) {
    return userlogin?.call(
        emailController, passwordController, context, directionText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailController, String passwordController,
            BuildContext context, String directionText)?
        userlogin,
    required TResult orElse(),
  }) {
    if (userlogin != null) {
      return userlogin(
          emailController, passwordController, context, directionText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_userlogin value) userlogin,
  }) {
    return userlogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_userlogin value)? userlogin,
  }) {
    return userlogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_userlogin value)? userlogin,
    required TResult orElse(),
  }) {
    if (userlogin != null) {
      return userlogin(this);
    }
    return orElse();
  }
}

abstract class _userlogin implements SignInEvent {
  const factory _userlogin(
      {required final String emailController,
      required final String passwordController,
      required final BuildContext context,
      required final String directionText}) = _$userloginImpl;

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
  _$$userloginImplCopyWith<_$userloginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignInState {}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res, SignInState>;
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res, $Val extends SignInState>
    implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignInStateImplCopyWith<$Res> {
  factory _$$SignInStateImplCopyWith(
          _$SignInStateImpl value, $Res Function(_$SignInStateImpl) then) =
      __$$SignInStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInStateImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$SignInStateImpl>
    implements _$$SignInStateImplCopyWith<$Res> {
  __$$SignInStateImplCopyWithImpl(
      _$SignInStateImpl _value, $Res Function(_$SignInStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignInStateImpl implements _SignInState {
  const _$SignInStateImpl();

  @override
  String toString() {
    return 'SignInState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignInStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _SignInState implements SignInState {
  const factory _SignInState() = _$SignInStateImpl;
}
