// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MediaState {
  BaseState get state => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;
  List<MediaModel> get clubMedias => throw _privateConstructorUsedError;
  List<MediaModel> get programMedias => throw _privateConstructorUsedError;
  List<MediaModel> get exerciseMedias => throw _privateConstructorUsedError;
  List<MediaModel> get examMedias => throw _privateConstructorUsedError;
  List<MediaModel> get questionMedias => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MediaStateCopyWith<MediaState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaStateCopyWith<$Res> {
  factory $MediaStateCopyWith(
          MediaState value, $Res Function(MediaState) then) =
      _$MediaStateCopyWithImpl<$Res, MediaState>;
  @useResult
  $Res call(
      {BaseState state,
      Failure? failure,
      List<MediaModel> clubMedias,
      List<MediaModel> programMedias,
      List<MediaModel> exerciseMedias,
      List<MediaModel> examMedias,
      List<MediaModel> questionMedias});
}

/// @nodoc
class _$MediaStateCopyWithImpl<$Res, $Val extends MediaState>
    implements $MediaStateCopyWith<$Res> {
  _$MediaStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? failure = freezed,
    Object? clubMedias = null,
    Object? programMedias = null,
    Object? exerciseMedias = null,
    Object? examMedias = null,
    Object? questionMedias = null,
  }) {
    return _then(_value.copyWith(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as BaseState,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
      clubMedias: null == clubMedias
          ? _value.clubMedias
          : clubMedias // ignore: cast_nullable_to_non_nullable
              as List<MediaModel>,
      programMedias: null == programMedias
          ? _value.programMedias
          : programMedias // ignore: cast_nullable_to_non_nullable
              as List<MediaModel>,
      exerciseMedias: null == exerciseMedias
          ? _value.exerciseMedias
          : exerciseMedias // ignore: cast_nullable_to_non_nullable
              as List<MediaModel>,
      examMedias: null == examMedias
          ? _value.examMedias
          : examMedias // ignore: cast_nullable_to_non_nullable
              as List<MediaModel>,
      questionMedias: null == questionMedias
          ? _value.questionMedias
          : questionMedias // ignore: cast_nullable_to_non_nullable
              as List<MediaModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MediaStateImplCopyWith<$Res>
    implements $MediaStateCopyWith<$Res> {
  factory _$$MediaStateImplCopyWith(
          _$MediaStateImpl value, $Res Function(_$MediaStateImpl) then) =
      __$$MediaStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BaseState state,
      Failure? failure,
      List<MediaModel> clubMedias,
      List<MediaModel> programMedias,
      List<MediaModel> exerciseMedias,
      List<MediaModel> examMedias,
      List<MediaModel> questionMedias});
}

/// @nodoc
class __$$MediaStateImplCopyWithImpl<$Res>
    extends _$MediaStateCopyWithImpl<$Res, _$MediaStateImpl>
    implements _$$MediaStateImplCopyWith<$Res> {
  __$$MediaStateImplCopyWithImpl(
      _$MediaStateImpl _value, $Res Function(_$MediaStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? failure = freezed,
    Object? clubMedias = null,
    Object? programMedias = null,
    Object? exerciseMedias = null,
    Object? examMedias = null,
    Object? questionMedias = null,
  }) {
    return _then(_$MediaStateImpl(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as BaseState,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
      clubMedias: null == clubMedias
          ? _value._clubMedias
          : clubMedias // ignore: cast_nullable_to_non_nullable
              as List<MediaModel>,
      programMedias: null == programMedias
          ? _value._programMedias
          : programMedias // ignore: cast_nullable_to_non_nullable
              as List<MediaModel>,
      exerciseMedias: null == exerciseMedias
          ? _value._exerciseMedias
          : exerciseMedias // ignore: cast_nullable_to_non_nullable
              as List<MediaModel>,
      examMedias: null == examMedias
          ? _value._examMedias
          : examMedias // ignore: cast_nullable_to_non_nullable
              as List<MediaModel>,
      questionMedias: null == questionMedias
          ? _value._questionMedias
          : questionMedias // ignore: cast_nullable_to_non_nullable
              as List<MediaModel>,
    ));
  }
}

/// @nodoc

class _$MediaStateImpl implements _MediaState {
  const _$MediaStateImpl(
      {this.state = BaseState.initial,
      this.failure,
      final List<MediaModel> clubMedias = const [],
      final List<MediaModel> programMedias = const [],
      final List<MediaModel> exerciseMedias = const [],
      final List<MediaModel> examMedias = const [],
      final List<MediaModel> questionMedias = const []})
      : _clubMedias = clubMedias,
        _programMedias = programMedias,
        _exerciseMedias = exerciseMedias,
        _examMedias = examMedias,
        _questionMedias = questionMedias;

  @override
  @JsonKey()
  final BaseState state;
  @override
  final Failure? failure;
  final List<MediaModel> _clubMedias;
  @override
  @JsonKey()
  List<MediaModel> get clubMedias {
    if (_clubMedias is EqualUnmodifiableListView) return _clubMedias;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_clubMedias);
  }

  final List<MediaModel> _programMedias;
  @override
  @JsonKey()
  List<MediaModel> get programMedias {
    if (_programMedias is EqualUnmodifiableListView) return _programMedias;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_programMedias);
  }

  final List<MediaModel> _exerciseMedias;
  @override
  @JsonKey()
  List<MediaModel> get exerciseMedias {
    if (_exerciseMedias is EqualUnmodifiableListView) return _exerciseMedias;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exerciseMedias);
  }

  final List<MediaModel> _examMedias;
  @override
  @JsonKey()
  List<MediaModel> get examMedias {
    if (_examMedias is EqualUnmodifiableListView) return _examMedias;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_examMedias);
  }

  final List<MediaModel> _questionMedias;
  @override
  @JsonKey()
  List<MediaModel> get questionMedias {
    if (_questionMedias is EqualUnmodifiableListView) return _questionMedias;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questionMedias);
  }

  @override
  String toString() {
    return 'MediaState(state: $state, failure: $failure, clubMedias: $clubMedias, programMedias: $programMedias, exerciseMedias: $exerciseMedias, examMedias: $examMedias, questionMedias: $questionMedias)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaStateImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            const DeepCollectionEquality()
                .equals(other._clubMedias, _clubMedias) &&
            const DeepCollectionEquality()
                .equals(other._programMedias, _programMedias) &&
            const DeepCollectionEquality()
                .equals(other._exerciseMedias, _exerciseMedias) &&
            const DeepCollectionEquality()
                .equals(other._examMedias, _examMedias) &&
            const DeepCollectionEquality()
                .equals(other._questionMedias, _questionMedias));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      state,
      failure,
      const DeepCollectionEquality().hash(_clubMedias),
      const DeepCollectionEquality().hash(_programMedias),
      const DeepCollectionEquality().hash(_exerciseMedias),
      const DeepCollectionEquality().hash(_examMedias),
      const DeepCollectionEquality().hash(_questionMedias));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaStateImplCopyWith<_$MediaStateImpl> get copyWith =>
      __$$MediaStateImplCopyWithImpl<_$MediaStateImpl>(this, _$identity);
}

abstract class _MediaState implements MediaState {
  const factory _MediaState(
      {final BaseState state,
      final Failure? failure,
      final List<MediaModel> clubMedias,
      final List<MediaModel> programMedias,
      final List<MediaModel> exerciseMedias,
      final List<MediaModel> examMedias,
      final List<MediaModel> questionMedias}) = _$MediaStateImpl;

  @override
  BaseState get state;
  @override
  Failure? get failure;
  @override
  List<MediaModel> get clubMedias;
  @override
  List<MediaModel> get programMedias;
  @override
  List<MediaModel> get exerciseMedias;
  @override
  List<MediaModel> get examMedias;
  @override
  List<MediaModel> get questionMedias;
  @override
  @JsonKey(ignore: true)
  _$$MediaStateImplCopyWith<_$MediaStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
