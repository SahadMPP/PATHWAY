// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StudentHomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) navigatingSeeAll,
    required TResult Function(BuildContext context, Lesson lesson) deatilePage,
    required TResult Function(int index) swichingSubjectList,
    required TResult Function(int index) selectingDeskSection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? navigatingSeeAll,
    TResult? Function(BuildContext context, Lesson lesson)? deatilePage,
    TResult? Function(int index)? swichingSubjectList,
    TResult? Function(int index)? selectingDeskSection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? navigatingSeeAll,
    TResult Function(BuildContext context, Lesson lesson)? deatilePage,
    TResult Function(int index)? swichingSubjectList,
    TResult Function(int index)? selectingDeskSection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_navigatingSeeAll value) navigatingSeeAll,
    required TResult Function(_deatilePage value) deatilePage,
    required TResult Function(_swichingSubjectList value) swichingSubjectList,
    required TResult Function(_selectingDeskSection value) selectingDeskSection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_navigatingSeeAll value)? navigatingSeeAll,
    TResult? Function(_deatilePage value)? deatilePage,
    TResult? Function(_swichingSubjectList value)? swichingSubjectList,
    TResult? Function(_selectingDeskSection value)? selectingDeskSection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_navigatingSeeAll value)? navigatingSeeAll,
    TResult Function(_deatilePage value)? deatilePage,
    TResult Function(_swichingSubjectList value)? swichingSubjectList,
    TResult Function(_selectingDeskSection value)? selectingDeskSection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentHomeEventCopyWith<$Res> {
  factory $StudentHomeEventCopyWith(
          StudentHomeEvent value, $Res Function(StudentHomeEvent) then) =
      _$StudentHomeEventCopyWithImpl<$Res, StudentHomeEvent>;
}

/// @nodoc
class _$StudentHomeEventCopyWithImpl<$Res, $Val extends StudentHomeEvent>
    implements $StudentHomeEventCopyWith<$Res> {
  _$StudentHomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$navigatingSeeAllImplCopyWith<$Res> {
  factory _$$navigatingSeeAllImplCopyWith(_$navigatingSeeAllImpl value,
          $Res Function(_$navigatingSeeAllImpl) then) =
      __$$navigatingSeeAllImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$navigatingSeeAllImplCopyWithImpl<$Res>
    extends _$StudentHomeEventCopyWithImpl<$Res, _$navigatingSeeAllImpl>
    implements _$$navigatingSeeAllImplCopyWith<$Res> {
  __$$navigatingSeeAllImplCopyWithImpl(_$navigatingSeeAllImpl _value,
      $Res Function(_$navigatingSeeAllImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$navigatingSeeAllImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$navigatingSeeAllImpl implements _navigatingSeeAll {
  const _$navigatingSeeAllImpl({required this.context});

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'StudentHomeEvent.navigatingSeeAll(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$navigatingSeeAllImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$navigatingSeeAllImplCopyWith<_$navigatingSeeAllImpl> get copyWith =>
      __$$navigatingSeeAllImplCopyWithImpl<_$navigatingSeeAllImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) navigatingSeeAll,
    required TResult Function(BuildContext context, Lesson lesson) deatilePage,
    required TResult Function(int index) swichingSubjectList,
    required TResult Function(int index) selectingDeskSection,
  }) {
    return navigatingSeeAll(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? navigatingSeeAll,
    TResult? Function(BuildContext context, Lesson lesson)? deatilePage,
    TResult? Function(int index)? swichingSubjectList,
    TResult? Function(int index)? selectingDeskSection,
  }) {
    return navigatingSeeAll?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? navigatingSeeAll,
    TResult Function(BuildContext context, Lesson lesson)? deatilePage,
    TResult Function(int index)? swichingSubjectList,
    TResult Function(int index)? selectingDeskSection,
    required TResult orElse(),
  }) {
    if (navigatingSeeAll != null) {
      return navigatingSeeAll(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_navigatingSeeAll value) navigatingSeeAll,
    required TResult Function(_deatilePage value) deatilePage,
    required TResult Function(_swichingSubjectList value) swichingSubjectList,
    required TResult Function(_selectingDeskSection value) selectingDeskSection,
  }) {
    return navigatingSeeAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_navigatingSeeAll value)? navigatingSeeAll,
    TResult? Function(_deatilePage value)? deatilePage,
    TResult? Function(_swichingSubjectList value)? swichingSubjectList,
    TResult? Function(_selectingDeskSection value)? selectingDeskSection,
  }) {
    return navigatingSeeAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_navigatingSeeAll value)? navigatingSeeAll,
    TResult Function(_deatilePage value)? deatilePage,
    TResult Function(_swichingSubjectList value)? swichingSubjectList,
    TResult Function(_selectingDeskSection value)? selectingDeskSection,
    required TResult orElse(),
  }) {
    if (navigatingSeeAll != null) {
      return navigatingSeeAll(this);
    }
    return orElse();
  }
}

abstract class _navigatingSeeAll implements StudentHomeEvent {
  const factory _navigatingSeeAll({required final BuildContext context}) =
      _$navigatingSeeAllImpl;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$navigatingSeeAllImplCopyWith<_$navigatingSeeAllImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$deatilePageImplCopyWith<$Res> {
  factory _$$deatilePageImplCopyWith(
          _$deatilePageImpl value, $Res Function(_$deatilePageImpl) then) =
      __$$deatilePageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context, Lesson lesson});
}

/// @nodoc
class __$$deatilePageImplCopyWithImpl<$Res>
    extends _$StudentHomeEventCopyWithImpl<$Res, _$deatilePageImpl>
    implements _$$deatilePageImplCopyWith<$Res> {
  __$$deatilePageImplCopyWithImpl(
      _$deatilePageImpl _value, $Res Function(_$deatilePageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? lesson = null,
  }) {
    return _then(_$deatilePageImpl(
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

class _$deatilePageImpl implements _deatilePage {
  const _$deatilePageImpl({required this.context, required this.lesson});

  @override
  final BuildContext context;
  @override
  final Lesson lesson;

  @override
  String toString() {
    return 'StudentHomeEvent.deatilePage(context: $context, lesson: $lesson)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$deatilePageImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.lesson, lesson) || other.lesson == lesson));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, lesson);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$deatilePageImplCopyWith<_$deatilePageImpl> get copyWith =>
      __$$deatilePageImplCopyWithImpl<_$deatilePageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) navigatingSeeAll,
    required TResult Function(BuildContext context, Lesson lesson) deatilePage,
    required TResult Function(int index) swichingSubjectList,
    required TResult Function(int index) selectingDeskSection,
  }) {
    return deatilePage(context, lesson);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? navigatingSeeAll,
    TResult? Function(BuildContext context, Lesson lesson)? deatilePage,
    TResult? Function(int index)? swichingSubjectList,
    TResult? Function(int index)? selectingDeskSection,
  }) {
    return deatilePage?.call(context, lesson);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? navigatingSeeAll,
    TResult Function(BuildContext context, Lesson lesson)? deatilePage,
    TResult Function(int index)? swichingSubjectList,
    TResult Function(int index)? selectingDeskSection,
    required TResult orElse(),
  }) {
    if (deatilePage != null) {
      return deatilePage(context, lesson);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_navigatingSeeAll value) navigatingSeeAll,
    required TResult Function(_deatilePage value) deatilePage,
    required TResult Function(_swichingSubjectList value) swichingSubjectList,
    required TResult Function(_selectingDeskSection value) selectingDeskSection,
  }) {
    return deatilePage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_navigatingSeeAll value)? navigatingSeeAll,
    TResult? Function(_deatilePage value)? deatilePage,
    TResult? Function(_swichingSubjectList value)? swichingSubjectList,
    TResult? Function(_selectingDeskSection value)? selectingDeskSection,
  }) {
    return deatilePage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_navigatingSeeAll value)? navigatingSeeAll,
    TResult Function(_deatilePage value)? deatilePage,
    TResult Function(_swichingSubjectList value)? swichingSubjectList,
    TResult Function(_selectingDeskSection value)? selectingDeskSection,
    required TResult orElse(),
  }) {
    if (deatilePage != null) {
      return deatilePage(this);
    }
    return orElse();
  }
}

abstract class _deatilePage implements StudentHomeEvent {
  const factory _deatilePage(
      {required final BuildContext context,
      required final Lesson lesson}) = _$deatilePageImpl;

  BuildContext get context;
  Lesson get lesson;
  @JsonKey(ignore: true)
  _$$deatilePageImplCopyWith<_$deatilePageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$swichingSubjectListImplCopyWith<$Res> {
  factory _$$swichingSubjectListImplCopyWith(_$swichingSubjectListImpl value,
          $Res Function(_$swichingSubjectListImpl) then) =
      __$$swichingSubjectListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$swichingSubjectListImplCopyWithImpl<$Res>
    extends _$StudentHomeEventCopyWithImpl<$Res, _$swichingSubjectListImpl>
    implements _$$swichingSubjectListImplCopyWith<$Res> {
  __$$swichingSubjectListImplCopyWithImpl(_$swichingSubjectListImpl _value,
      $Res Function(_$swichingSubjectListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$swichingSubjectListImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$swichingSubjectListImpl implements _swichingSubjectList {
  const _$swichingSubjectListImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'StudentHomeEvent.swichingSubjectList(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$swichingSubjectListImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$swichingSubjectListImplCopyWith<_$swichingSubjectListImpl> get copyWith =>
      __$$swichingSubjectListImplCopyWithImpl<_$swichingSubjectListImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) navigatingSeeAll,
    required TResult Function(BuildContext context, Lesson lesson) deatilePage,
    required TResult Function(int index) swichingSubjectList,
    required TResult Function(int index) selectingDeskSection,
  }) {
    return swichingSubjectList(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? navigatingSeeAll,
    TResult? Function(BuildContext context, Lesson lesson)? deatilePage,
    TResult? Function(int index)? swichingSubjectList,
    TResult? Function(int index)? selectingDeskSection,
  }) {
    return swichingSubjectList?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? navigatingSeeAll,
    TResult Function(BuildContext context, Lesson lesson)? deatilePage,
    TResult Function(int index)? swichingSubjectList,
    TResult Function(int index)? selectingDeskSection,
    required TResult orElse(),
  }) {
    if (swichingSubjectList != null) {
      return swichingSubjectList(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_navigatingSeeAll value) navigatingSeeAll,
    required TResult Function(_deatilePage value) deatilePage,
    required TResult Function(_swichingSubjectList value) swichingSubjectList,
    required TResult Function(_selectingDeskSection value) selectingDeskSection,
  }) {
    return swichingSubjectList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_navigatingSeeAll value)? navigatingSeeAll,
    TResult? Function(_deatilePage value)? deatilePage,
    TResult? Function(_swichingSubjectList value)? swichingSubjectList,
    TResult? Function(_selectingDeskSection value)? selectingDeskSection,
  }) {
    return swichingSubjectList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_navigatingSeeAll value)? navigatingSeeAll,
    TResult Function(_deatilePage value)? deatilePage,
    TResult Function(_swichingSubjectList value)? swichingSubjectList,
    TResult Function(_selectingDeskSection value)? selectingDeskSection,
    required TResult orElse(),
  }) {
    if (swichingSubjectList != null) {
      return swichingSubjectList(this);
    }
    return orElse();
  }
}

abstract class _swichingSubjectList implements StudentHomeEvent {
  const factory _swichingSubjectList({required final int index}) =
      _$swichingSubjectListImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$swichingSubjectListImplCopyWith<_$swichingSubjectListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$selectingDeskSectionImplCopyWith<$Res> {
  factory _$$selectingDeskSectionImplCopyWith(_$selectingDeskSectionImpl value,
          $Res Function(_$selectingDeskSectionImpl) then) =
      __$$selectingDeskSectionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$selectingDeskSectionImplCopyWithImpl<$Res>
    extends _$StudentHomeEventCopyWithImpl<$Res, _$selectingDeskSectionImpl>
    implements _$$selectingDeskSectionImplCopyWith<$Res> {
  __$$selectingDeskSectionImplCopyWithImpl(_$selectingDeskSectionImpl _value,
      $Res Function(_$selectingDeskSectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$selectingDeskSectionImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$selectingDeskSectionImpl implements _selectingDeskSection {
  const _$selectingDeskSectionImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'StudentHomeEvent.selectingDeskSection(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$selectingDeskSectionImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$selectingDeskSectionImplCopyWith<_$selectingDeskSectionImpl>
      get copyWith =>
          __$$selectingDeskSectionImplCopyWithImpl<_$selectingDeskSectionImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) navigatingSeeAll,
    required TResult Function(BuildContext context, Lesson lesson) deatilePage,
    required TResult Function(int index) swichingSubjectList,
    required TResult Function(int index) selectingDeskSection,
  }) {
    return selectingDeskSection(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? navigatingSeeAll,
    TResult? Function(BuildContext context, Lesson lesson)? deatilePage,
    TResult? Function(int index)? swichingSubjectList,
    TResult? Function(int index)? selectingDeskSection,
  }) {
    return selectingDeskSection?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? navigatingSeeAll,
    TResult Function(BuildContext context, Lesson lesson)? deatilePage,
    TResult Function(int index)? swichingSubjectList,
    TResult Function(int index)? selectingDeskSection,
    required TResult orElse(),
  }) {
    if (selectingDeskSection != null) {
      return selectingDeskSection(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_navigatingSeeAll value) navigatingSeeAll,
    required TResult Function(_deatilePage value) deatilePage,
    required TResult Function(_swichingSubjectList value) swichingSubjectList,
    required TResult Function(_selectingDeskSection value) selectingDeskSection,
  }) {
    return selectingDeskSection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_navigatingSeeAll value)? navigatingSeeAll,
    TResult? Function(_deatilePage value)? deatilePage,
    TResult? Function(_swichingSubjectList value)? swichingSubjectList,
    TResult? Function(_selectingDeskSection value)? selectingDeskSection,
  }) {
    return selectingDeskSection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_navigatingSeeAll value)? navigatingSeeAll,
    TResult Function(_deatilePage value)? deatilePage,
    TResult Function(_swichingSubjectList value)? swichingSubjectList,
    TResult Function(_selectingDeskSection value)? selectingDeskSection,
    required TResult orElse(),
  }) {
    if (selectingDeskSection != null) {
      return selectingDeskSection(this);
    }
    return orElse();
  }
}

abstract class _selectingDeskSection implements StudentHomeEvent {
  const factory _selectingDeskSection({required final int index}) =
      _$selectingDeskSectionImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$selectingDeskSectionImplCopyWith<_$selectingDeskSectionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StudentHomeState {
  int get selectedTopic => throw _privateConstructorUsedError;
  String get currentSubject => throw _privateConstructorUsedError;
  int get selectedIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StudentHomeStateCopyWith<StudentHomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentHomeStateCopyWith<$Res> {
  factory $StudentHomeStateCopyWith(
          StudentHomeState value, $Res Function(StudentHomeState) then) =
      _$StudentHomeStateCopyWithImpl<$Res, StudentHomeState>;
  @useResult
  $Res call({int selectedTopic, String currentSubject, int selectedIndex});
}

/// @nodoc
class _$StudentHomeStateCopyWithImpl<$Res, $Val extends StudentHomeState>
    implements $StudentHomeStateCopyWith<$Res> {
  _$StudentHomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTopic = null,
    Object? currentSubject = null,
    Object? selectedIndex = null,
  }) {
    return _then(_value.copyWith(
      selectedTopic: null == selectedTopic
          ? _value.selectedTopic
          : selectedTopic // ignore: cast_nullable_to_non_nullable
              as int,
      currentSubject: null == currentSubject
          ? _value.currentSubject
          : currentSubject // ignore: cast_nullable_to_non_nullable
              as String,
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentHomeStateImplCopyWith<$Res>
    implements $StudentHomeStateCopyWith<$Res> {
  factory _$$StudentHomeStateImplCopyWith(_$StudentHomeStateImpl value,
          $Res Function(_$StudentHomeStateImpl) then) =
      __$$StudentHomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int selectedTopic, String currentSubject, int selectedIndex});
}

/// @nodoc
class __$$StudentHomeStateImplCopyWithImpl<$Res>
    extends _$StudentHomeStateCopyWithImpl<$Res, _$StudentHomeStateImpl>
    implements _$$StudentHomeStateImplCopyWith<$Res> {
  __$$StudentHomeStateImplCopyWithImpl(_$StudentHomeStateImpl _value,
      $Res Function(_$StudentHomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTopic = null,
    Object? currentSubject = null,
    Object? selectedIndex = null,
  }) {
    return _then(_$StudentHomeStateImpl(
      selectedTopic: null == selectedTopic
          ? _value.selectedTopic
          : selectedTopic // ignore: cast_nullable_to_non_nullable
              as int,
      currentSubject: null == currentSubject
          ? _value.currentSubject
          : currentSubject // ignore: cast_nullable_to_non_nullable
              as String,
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$StudentHomeStateImpl implements _StudentHomeState {
  const _$StudentHomeStateImpl(
      {required this.selectedTopic,
      required this.currentSubject,
      required this.selectedIndex});

  @override
  final int selectedTopic;
  @override
  final String currentSubject;
  @override
  final int selectedIndex;

  @override
  String toString() {
    return 'StudentHomeState(selectedTopic: $selectedTopic, currentSubject: $currentSubject, selectedIndex: $selectedIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentHomeStateImpl &&
            (identical(other.selectedTopic, selectedTopic) ||
                other.selectedTopic == selectedTopic) &&
            (identical(other.currentSubject, currentSubject) ||
                other.currentSubject == currentSubject) &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, selectedTopic, currentSubject, selectedIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentHomeStateImplCopyWith<_$StudentHomeStateImpl> get copyWith =>
      __$$StudentHomeStateImplCopyWithImpl<_$StudentHomeStateImpl>(
          this, _$identity);
}

abstract class _StudentHomeState implements StudentHomeState {
  const factory _StudentHomeState(
      {required final int selectedTopic,
      required final String currentSubject,
      required final int selectedIndex}) = _$StudentHomeStateImpl;

  @override
  int get selectedTopic;
  @override
  String get currentSubject;
  @override
  int get selectedIndex;
  @override
  @JsonKey(ignore: true)
  _$$StudentHomeStateImplCopyWith<_$StudentHomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
