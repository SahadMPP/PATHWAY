// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subcription_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SubcriptionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int amount, String mob, String subject, String email)
        makingsubcription,
    required TResult Function() makeinginstence,
    required TResult Function(String subject, String id, BuildContext context)
        updataStudentdata,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int amount, String mob, String subject, String email)?
        makingsubcription,
    TResult? Function()? makeinginstence,
    TResult? Function(String subject, String id, BuildContext context)?
        updataStudentdata,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int amount, String mob, String subject, String email)?
        makingsubcription,
    TResult Function()? makeinginstence,
    TResult Function(String subject, String id, BuildContext context)?
        updataStudentdata,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_makingsubcription value) makingsubcription,
    required TResult Function(_makeinginstence value) makeinginstence,
    required TResult Function(_updataStudentdata value) updataStudentdata,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_makingsubcription value)? makingsubcription,
    TResult? Function(_makeinginstence value)? makeinginstence,
    TResult? Function(_updataStudentdata value)? updataStudentdata,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_makingsubcription value)? makingsubcription,
    TResult Function(_makeinginstence value)? makeinginstence,
    TResult Function(_updataStudentdata value)? updataStudentdata,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubcriptionEventCopyWith<$Res> {
  factory $SubcriptionEventCopyWith(
          SubcriptionEvent value, $Res Function(SubcriptionEvent) then) =
      _$SubcriptionEventCopyWithImpl<$Res, SubcriptionEvent>;
}

/// @nodoc
class _$SubcriptionEventCopyWithImpl<$Res, $Val extends SubcriptionEvent>
    implements $SubcriptionEventCopyWith<$Res> {
  _$SubcriptionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$makingsubcriptionImplCopyWith<$Res> {
  factory _$$makingsubcriptionImplCopyWith(_$makingsubcriptionImpl value,
          $Res Function(_$makingsubcriptionImpl) then) =
      __$$makingsubcriptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int amount, String mob, String subject, String email});
}

/// @nodoc
class __$$makingsubcriptionImplCopyWithImpl<$Res>
    extends _$SubcriptionEventCopyWithImpl<$Res, _$makingsubcriptionImpl>
    implements _$$makingsubcriptionImplCopyWith<$Res> {
  __$$makingsubcriptionImplCopyWithImpl(_$makingsubcriptionImpl _value,
      $Res Function(_$makingsubcriptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? mob = null,
    Object? subject = null,
    Object? email = null,
  }) {
    return _then(_$makingsubcriptionImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      mob: null == mob
          ? _value.mob
          : mob // ignore: cast_nullable_to_non_nullable
              as String,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$makingsubcriptionImpl implements _makingsubcription {
  const _$makingsubcriptionImpl(
      {required this.amount,
      required this.mob,
      required this.subject,
      required this.email});

  @override
  final int amount;
  @override
  final String mob;
  @override
  final String subject;
  @override
  final String email;

  @override
  String toString() {
    return 'SubcriptionEvent.makingsubcription(amount: $amount, mob: $mob, subject: $subject, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$makingsubcriptionImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.mob, mob) || other.mob == mob) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount, mob, subject, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$makingsubcriptionImplCopyWith<_$makingsubcriptionImpl> get copyWith =>
      __$$makingsubcriptionImplCopyWithImpl<_$makingsubcriptionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int amount, String mob, String subject, String email)
        makingsubcription,
    required TResult Function() makeinginstence,
    required TResult Function(String subject, String id, BuildContext context)
        updataStudentdata,
  }) {
    return makingsubcription(amount, mob, subject, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int amount, String mob, String subject, String email)?
        makingsubcription,
    TResult? Function()? makeinginstence,
    TResult? Function(String subject, String id, BuildContext context)?
        updataStudentdata,
  }) {
    return makingsubcription?.call(amount, mob, subject, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int amount, String mob, String subject, String email)?
        makingsubcription,
    TResult Function()? makeinginstence,
    TResult Function(String subject, String id, BuildContext context)?
        updataStudentdata,
    required TResult orElse(),
  }) {
    if (makingsubcription != null) {
      return makingsubcription(amount, mob, subject, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_makingsubcription value) makingsubcription,
    required TResult Function(_makeinginstence value) makeinginstence,
    required TResult Function(_updataStudentdata value) updataStudentdata,
  }) {
    return makingsubcription(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_makingsubcription value)? makingsubcription,
    TResult? Function(_makeinginstence value)? makeinginstence,
    TResult? Function(_updataStudentdata value)? updataStudentdata,
  }) {
    return makingsubcription?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_makingsubcription value)? makingsubcription,
    TResult Function(_makeinginstence value)? makeinginstence,
    TResult Function(_updataStudentdata value)? updataStudentdata,
    required TResult orElse(),
  }) {
    if (makingsubcription != null) {
      return makingsubcription(this);
    }
    return orElse();
  }
}

abstract class _makingsubcription implements SubcriptionEvent {
  const factory _makingsubcription(
      {required final int amount,
      required final String mob,
      required final String subject,
      required final String email}) = _$makingsubcriptionImpl;

  int get amount;
  String get mob;
  String get subject;
  String get email;
  @JsonKey(ignore: true)
  _$$makingsubcriptionImplCopyWith<_$makingsubcriptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$makeinginstenceImplCopyWith<$Res> {
  factory _$$makeinginstenceImplCopyWith(_$makeinginstenceImpl value,
          $Res Function(_$makeinginstenceImpl) then) =
      __$$makeinginstenceImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$makeinginstenceImplCopyWithImpl<$Res>
    extends _$SubcriptionEventCopyWithImpl<$Res, _$makeinginstenceImpl>
    implements _$$makeinginstenceImplCopyWith<$Res> {
  __$$makeinginstenceImplCopyWithImpl(
      _$makeinginstenceImpl _value, $Res Function(_$makeinginstenceImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$makeinginstenceImpl implements _makeinginstence {
  const _$makeinginstenceImpl();

  @override
  String toString() {
    return 'SubcriptionEvent.makeinginstence()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$makeinginstenceImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int amount, String mob, String subject, String email)
        makingsubcription,
    required TResult Function() makeinginstence,
    required TResult Function(String subject, String id, BuildContext context)
        updataStudentdata,
  }) {
    return makeinginstence();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int amount, String mob, String subject, String email)?
        makingsubcription,
    TResult? Function()? makeinginstence,
    TResult? Function(String subject, String id, BuildContext context)?
        updataStudentdata,
  }) {
    return makeinginstence?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int amount, String mob, String subject, String email)?
        makingsubcription,
    TResult Function()? makeinginstence,
    TResult Function(String subject, String id, BuildContext context)?
        updataStudentdata,
    required TResult orElse(),
  }) {
    if (makeinginstence != null) {
      return makeinginstence();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_makingsubcription value) makingsubcription,
    required TResult Function(_makeinginstence value) makeinginstence,
    required TResult Function(_updataStudentdata value) updataStudentdata,
  }) {
    return makeinginstence(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_makingsubcription value)? makingsubcription,
    TResult? Function(_makeinginstence value)? makeinginstence,
    TResult? Function(_updataStudentdata value)? updataStudentdata,
  }) {
    return makeinginstence?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_makingsubcription value)? makingsubcription,
    TResult Function(_makeinginstence value)? makeinginstence,
    TResult Function(_updataStudentdata value)? updataStudentdata,
    required TResult orElse(),
  }) {
    if (makeinginstence != null) {
      return makeinginstence(this);
    }
    return orElse();
  }
}

abstract class _makeinginstence implements SubcriptionEvent {
  const factory _makeinginstence() = _$makeinginstenceImpl;
}

/// @nodoc
abstract class _$$updataStudentdataImplCopyWith<$Res> {
  factory _$$updataStudentdataImplCopyWith(_$updataStudentdataImpl value,
          $Res Function(_$updataStudentdataImpl) then) =
      __$$updataStudentdataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String subject, String id, BuildContext context});
}

/// @nodoc
class __$$updataStudentdataImplCopyWithImpl<$Res>
    extends _$SubcriptionEventCopyWithImpl<$Res, _$updataStudentdataImpl>
    implements _$$updataStudentdataImplCopyWith<$Res> {
  __$$updataStudentdataImplCopyWithImpl(_$updataStudentdataImpl _value,
      $Res Function(_$updataStudentdataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subject = null,
    Object? id = null,
    Object? context = null,
  }) {
    return _then(_$updataStudentdataImpl(
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$updataStudentdataImpl implements _updataStudentdata {
  const _$updataStudentdataImpl(
      {required this.subject, required this.id, required this.context});

  @override
  final String subject;
  @override
  final String id;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'SubcriptionEvent.updataStudentdata(subject: $subject, id: $id, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$updataStudentdataImpl &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subject, id, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$updataStudentdataImplCopyWith<_$updataStudentdataImpl> get copyWith =>
      __$$updataStudentdataImplCopyWithImpl<_$updataStudentdataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int amount, String mob, String subject, String email)
        makingsubcription,
    required TResult Function() makeinginstence,
    required TResult Function(String subject, String id, BuildContext context)
        updataStudentdata,
  }) {
    return updataStudentdata(subject, id, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int amount, String mob, String subject, String email)?
        makingsubcription,
    TResult? Function()? makeinginstence,
    TResult? Function(String subject, String id, BuildContext context)?
        updataStudentdata,
  }) {
    return updataStudentdata?.call(subject, id, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int amount, String mob, String subject, String email)?
        makingsubcription,
    TResult Function()? makeinginstence,
    TResult Function(String subject, String id, BuildContext context)?
        updataStudentdata,
    required TResult orElse(),
  }) {
    if (updataStudentdata != null) {
      return updataStudentdata(subject, id, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_makingsubcription value) makingsubcription,
    required TResult Function(_makeinginstence value) makeinginstence,
    required TResult Function(_updataStudentdata value) updataStudentdata,
  }) {
    return updataStudentdata(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_makingsubcription value)? makingsubcription,
    TResult? Function(_makeinginstence value)? makeinginstence,
    TResult? Function(_updataStudentdata value)? updataStudentdata,
  }) {
    return updataStudentdata?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_makingsubcription value)? makingsubcription,
    TResult Function(_makeinginstence value)? makeinginstence,
    TResult Function(_updataStudentdata value)? updataStudentdata,
    required TResult orElse(),
  }) {
    if (updataStudentdata != null) {
      return updataStudentdata(this);
    }
    return orElse();
  }
}

abstract class _updataStudentdata implements SubcriptionEvent {
  const factory _updataStudentdata(
      {required final String subject,
      required final String id,
      required final BuildContext context}) = _$updataStudentdataImpl;

  String get subject;
  String get id;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$updataStudentdataImplCopyWith<_$updataStudentdataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SubcriptionState {
  Razorpay get razorpay => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SubcriptionStateCopyWith<SubcriptionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubcriptionStateCopyWith<$Res> {
  factory $SubcriptionStateCopyWith(
          SubcriptionState value, $Res Function(SubcriptionState) then) =
      _$SubcriptionStateCopyWithImpl<$Res, SubcriptionState>;
  @useResult
  $Res call({Razorpay razorpay});
}

/// @nodoc
class _$SubcriptionStateCopyWithImpl<$Res, $Val extends SubcriptionState>
    implements $SubcriptionStateCopyWith<$Res> {
  _$SubcriptionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? razorpay = null,
  }) {
    return _then(_value.copyWith(
      razorpay: null == razorpay
          ? _value.razorpay
          : razorpay // ignore: cast_nullable_to_non_nullable
              as Razorpay,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubcriptionStateImplCopyWith<$Res>
    implements $SubcriptionStateCopyWith<$Res> {
  factory _$$SubcriptionStateImplCopyWith(_$SubcriptionStateImpl value,
          $Res Function(_$SubcriptionStateImpl) then) =
      __$$SubcriptionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Razorpay razorpay});
}

/// @nodoc
class __$$SubcriptionStateImplCopyWithImpl<$Res>
    extends _$SubcriptionStateCopyWithImpl<$Res, _$SubcriptionStateImpl>
    implements _$$SubcriptionStateImplCopyWith<$Res> {
  __$$SubcriptionStateImplCopyWithImpl(_$SubcriptionStateImpl _value,
      $Res Function(_$SubcriptionStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? razorpay = null,
  }) {
    return _then(_$SubcriptionStateImpl(
      razorpay: null == razorpay
          ? _value.razorpay
          : razorpay // ignore: cast_nullable_to_non_nullable
              as Razorpay,
    ));
  }
}

/// @nodoc

class _$SubcriptionStateImpl implements _SubcriptionState {
  const _$SubcriptionStateImpl({required this.razorpay});

  @override
  final Razorpay razorpay;

  @override
  String toString() {
    return 'SubcriptionState(razorpay: $razorpay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubcriptionStateImpl &&
            (identical(other.razorpay, razorpay) ||
                other.razorpay == razorpay));
  }

  @override
  int get hashCode => Object.hash(runtimeType, razorpay);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubcriptionStateImplCopyWith<_$SubcriptionStateImpl> get copyWith =>
      __$$SubcriptionStateImplCopyWithImpl<_$SubcriptionStateImpl>(
          this, _$identity);
}

abstract class _SubcriptionState implements SubcriptionState {
  const factory _SubcriptionState({required final Razorpay razorpay}) =
      _$SubcriptionStateImpl;

  @override
  Razorpay get razorpay;
  @override
  @JsonKey(ignore: true)
  _$$SubcriptionStateImplCopyWith<_$SubcriptionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
