// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailController, String passwordController,
            BuildContext context)
        userlogin,
    required TResult Function(String nameController, String emailController,
            String passwordController)
        registerUser,
    required TResult Function() directionSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailController, String passwordController,
            BuildContext context)?
        userlogin,
    TResult? Function(String nameController, String emailController,
            String passwordController)?
        registerUser,
    TResult? Function()? directionSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailController, String passwordController,
            BuildContext context)?
        userlogin,
    TResult Function(String nameController, String emailController,
            String passwordController)?
        registerUser,
    TResult Function()? directionSelection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_userlogin value) userlogin,
    required TResult Function(_registerUser value) registerUser,
    required TResult Function(_directionSelection value) directionSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_userlogin value)? userlogin,
    TResult? Function(_registerUser value)? registerUser,
    TResult? Function(_directionSelection value)? directionSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_userlogin value)? userlogin,
    TResult Function(_registerUser value)? registerUser,
    TResult Function(_directionSelection value)? directionSelection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$userloginImplCopyWith<$Res> {
  factory _$$userloginImplCopyWith(
          _$userloginImpl value, $Res Function(_$userloginImpl) then) =
      __$$userloginImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String emailController,
      String passwordController,
      BuildContext context});
}

/// @nodoc
class __$$userloginImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$userloginImpl>
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
    ));
  }
}

/// @nodoc

class _$userloginImpl implements _userlogin {
  const _$userloginImpl(
      {required this.emailController,
      required this.passwordController,
      required this.context});

  @override
  final String emailController;
  @override
  final String passwordController;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'AuthEvent.userlogin(emailController: $emailController, passwordController: $passwordController, context: $context)';
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
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, emailController, passwordController, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$userloginImplCopyWith<_$userloginImpl> get copyWith =>
      __$$userloginImplCopyWithImpl<_$userloginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailController, String passwordController,
            BuildContext context)
        userlogin,
    required TResult Function(String nameController, String emailController,
            String passwordController)
        registerUser,
    required TResult Function() directionSelection,
  }) {
    return userlogin(emailController, passwordController, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailController, String passwordController,
            BuildContext context)?
        userlogin,
    TResult? Function(String nameController, String emailController,
            String passwordController)?
        registerUser,
    TResult? Function()? directionSelection,
  }) {
    return userlogin?.call(emailController, passwordController, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailController, String passwordController,
            BuildContext context)?
        userlogin,
    TResult Function(String nameController, String emailController,
            String passwordController)?
        registerUser,
    TResult Function()? directionSelection,
    required TResult orElse(),
  }) {
    if (userlogin != null) {
      return userlogin(emailController, passwordController, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_userlogin value) userlogin,
    required TResult Function(_registerUser value) registerUser,
    required TResult Function(_directionSelection value) directionSelection,
  }) {
    return userlogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_userlogin value)? userlogin,
    TResult? Function(_registerUser value)? registerUser,
    TResult? Function(_directionSelection value)? directionSelection,
  }) {
    return userlogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_userlogin value)? userlogin,
    TResult Function(_registerUser value)? registerUser,
    TResult Function(_directionSelection value)? directionSelection,
    required TResult orElse(),
  }) {
    if (userlogin != null) {
      return userlogin(this);
    }
    return orElse();
  }
}

abstract class _userlogin implements AuthEvent {
  const factory _userlogin(
      {required final String emailController,
      required final String passwordController,
      required final BuildContext context}) = _$userloginImpl;

  String get emailController;
  String get passwordController;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$userloginImplCopyWith<_$userloginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$registerUserImplCopyWith<$Res> {
  factory _$$registerUserImplCopyWith(
          _$registerUserImpl value, $Res Function(_$registerUserImpl) then) =
      __$$registerUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String nameController,
      String emailController,
      String passwordController});
}

/// @nodoc
class __$$registerUserImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$registerUserImpl>
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
    ));
  }
}

/// @nodoc

class _$registerUserImpl implements _registerUser {
  const _$registerUserImpl(
      {required this.nameController,
      required this.emailController,
      required this.passwordController});

  @override
  final String nameController;
  @override
  final String emailController;
  @override
  final String passwordController;

  @override
  String toString() {
    return 'AuthEvent.registerUser(nameController: $nameController, emailController: $emailController, passwordController: $passwordController)';
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
                other.passwordController == passwordController));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, nameController, emailController, passwordController);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$registerUserImplCopyWith<_$registerUserImpl> get copyWith =>
      __$$registerUserImplCopyWithImpl<_$registerUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailController, String passwordController,
            BuildContext context)
        userlogin,
    required TResult Function(String nameController, String emailController,
            String passwordController)
        registerUser,
    required TResult Function() directionSelection,
  }) {
    return registerUser(nameController, emailController, passwordController);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailController, String passwordController,
            BuildContext context)?
        userlogin,
    TResult? Function(String nameController, String emailController,
            String passwordController)?
        registerUser,
    TResult? Function()? directionSelection,
  }) {
    return registerUser?.call(
        nameController, emailController, passwordController);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailController, String passwordController,
            BuildContext context)?
        userlogin,
    TResult Function(String nameController, String emailController,
            String passwordController)?
        registerUser,
    TResult Function()? directionSelection,
    required TResult orElse(),
  }) {
    if (registerUser != null) {
      return registerUser(nameController, emailController, passwordController);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_userlogin value) userlogin,
    required TResult Function(_registerUser value) registerUser,
    required TResult Function(_directionSelection value) directionSelection,
  }) {
    return registerUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_userlogin value)? userlogin,
    TResult? Function(_registerUser value)? registerUser,
    TResult? Function(_directionSelection value)? directionSelection,
  }) {
    return registerUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_userlogin value)? userlogin,
    TResult Function(_registerUser value)? registerUser,
    TResult Function(_directionSelection value)? directionSelection,
    required TResult orElse(),
  }) {
    if (registerUser != null) {
      return registerUser(this);
    }
    return orElse();
  }
}

abstract class _registerUser implements AuthEvent {
  const factory _registerUser(
      {required final String nameController,
      required final String emailController,
      required final String passwordController}) = _$registerUserImpl;

  String get nameController;
  String get emailController;
  String get passwordController;
  @JsonKey(ignore: true)
  _$$registerUserImplCopyWith<_$registerUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$directionSelectionImplCopyWith<$Res> {
  factory _$$directionSelectionImplCopyWith(_$directionSelectionImpl value,
          $Res Function(_$directionSelectionImpl) then) =
      __$$directionSelectionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$directionSelectionImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$directionSelectionImpl>
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
    return 'AuthEvent.directionSelection()';
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
    required TResult Function(String emailController, String passwordController,
            BuildContext context)
        userlogin,
    required TResult Function(String nameController, String emailController,
            String passwordController)
        registerUser,
    required TResult Function() directionSelection,
  }) {
    return directionSelection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailController, String passwordController,
            BuildContext context)?
        userlogin,
    TResult? Function(String nameController, String emailController,
            String passwordController)?
        registerUser,
    TResult? Function()? directionSelection,
  }) {
    return directionSelection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailController, String passwordController,
            BuildContext context)?
        userlogin,
    TResult Function(String nameController, String emailController,
            String passwordController)?
        registerUser,
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
    required TResult Function(_userlogin value) userlogin,
    required TResult Function(_registerUser value) registerUser,
    required TResult Function(_directionSelection value) directionSelection,
  }) {
    return directionSelection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_userlogin value)? userlogin,
    TResult? Function(_registerUser value)? registerUser,
    TResult? Function(_directionSelection value)? directionSelection,
  }) {
    return directionSelection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_userlogin value)? userlogin,
    TResult Function(_registerUser value)? registerUser,
    TResult Function(_directionSelection value)? directionSelection,
    required TResult orElse(),
  }) {
    if (directionSelection != null) {
      return directionSelection(this);
    }
    return orElse();
  }
}

abstract class _directionSelection implements AuthEvent {
  const factory _directionSelection() = _$directionSelectionImpl;
}

/// @nodoc
mixin _$AuthState {
  bool get directionValue => throw _privateConstructorUsedError;
  String get directionText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call({bool directionValue, String directionText});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

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
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool directionValue, String directionText});
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? directionValue = null,
    Object? directionText = null,
  }) {
    return _then(_$AuthStateImpl(
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

class _$AuthStateImpl implements _AuthState {
  const _$AuthStateImpl(
      {required this.directionValue, required this.directionText});

  @override
  final bool directionValue;
  @override
  final String directionText;

  @override
  String toString() {
    return 'AuthState(directionValue: $directionValue, directionText: $directionText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
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
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {required final bool directionValue,
      required final String directionText}) = _$AuthStateImpl;

  @override
  bool get directionValue;
  @override
  String get directionText;
  @override
  @JsonKey(ignore: true)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
