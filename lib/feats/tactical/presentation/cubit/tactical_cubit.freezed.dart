// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tactical_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TacticalState {
  BaseState get state => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;
  List<TacticalModel> get tacticals => throw _privateConstructorUsedError;
  List<TacticalModel> get filteredTacticals =>
      throw _privateConstructorUsedError;
  List<MediaModel> get medias => throw _privateConstructorUsedError;
  TacticalModel? get createdTactical => throw _privateConstructorUsedError;
  File? get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TacticalStateCopyWith<TacticalState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TacticalStateCopyWith<$Res> {
  factory $TacticalStateCopyWith(
          TacticalState value, $Res Function(TacticalState) then) =
      _$TacticalStateCopyWithImpl<$Res, TacticalState>;
  @useResult
  $Res call(
      {BaseState state,
      Failure? failure,
      List<TacticalModel> tacticals,
      List<TacticalModel> filteredTacticals,
      List<MediaModel> medias,
      TacticalModel? createdTactical,
      File? image});

  $TacticalModelCopyWith<$Res>? get createdTactical;
}

/// @nodoc
class _$TacticalStateCopyWithImpl<$Res, $Val extends TacticalState>
    implements $TacticalStateCopyWith<$Res> {
  _$TacticalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? failure = freezed,
    Object? tacticals = null,
    Object? filteredTacticals = null,
    Object? medias = null,
    Object? createdTactical = freezed,
    Object? image = freezed,
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
      tacticals: null == tacticals
          ? _value.tacticals
          : tacticals // ignore: cast_nullable_to_non_nullable
              as List<TacticalModel>,
      filteredTacticals: null == filteredTacticals
          ? _value.filteredTacticals
          : filteredTacticals // ignore: cast_nullable_to_non_nullable
              as List<TacticalModel>,
      medias: null == medias
          ? _value.medias
          : medias // ignore: cast_nullable_to_non_nullable
              as List<MediaModel>,
      createdTactical: freezed == createdTactical
          ? _value.createdTactical
          : createdTactical // ignore: cast_nullable_to_non_nullable
              as TacticalModel?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TacticalModelCopyWith<$Res>? get createdTactical {
    if (_value.createdTactical == null) {
      return null;
    }

    return $TacticalModelCopyWith<$Res>(_value.createdTactical!, (value) {
      return _then(_value.copyWith(createdTactical: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TacticalStateImplCopyWith<$Res>
    implements $TacticalStateCopyWith<$Res> {
  factory _$$TacticalStateImplCopyWith(
          _$TacticalStateImpl value, $Res Function(_$TacticalStateImpl) then) =
      __$$TacticalStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BaseState state,
      Failure? failure,
      List<TacticalModel> tacticals,
      List<TacticalModel> filteredTacticals,
      List<MediaModel> medias,
      TacticalModel? createdTactical,
      File? image});

  @override
  $TacticalModelCopyWith<$Res>? get createdTactical;
}

/// @nodoc
class __$$TacticalStateImplCopyWithImpl<$Res>
    extends _$TacticalStateCopyWithImpl<$Res, _$TacticalStateImpl>
    implements _$$TacticalStateImplCopyWith<$Res> {
  __$$TacticalStateImplCopyWithImpl(
      _$TacticalStateImpl _value, $Res Function(_$TacticalStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? failure = freezed,
    Object? tacticals = null,
    Object? filteredTacticals = null,
    Object? medias = null,
    Object? createdTactical = freezed,
    Object? image = freezed,
  }) {
    return _then(_$TacticalStateImpl(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as BaseState,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
      tacticals: null == tacticals
          ? _value._tacticals
          : tacticals // ignore: cast_nullable_to_non_nullable
              as List<TacticalModel>,
      filteredTacticals: null == filteredTacticals
          ? _value._filteredTacticals
          : filteredTacticals // ignore: cast_nullable_to_non_nullable
              as List<TacticalModel>,
      medias: null == medias
          ? _value._medias
          : medias // ignore: cast_nullable_to_non_nullable
              as List<MediaModel>,
      createdTactical: freezed == createdTactical
          ? _value.createdTactical
          : createdTactical // ignore: cast_nullable_to_non_nullable
              as TacticalModel?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$TacticalStateImpl implements _TacticalState {
  const _$TacticalStateImpl(
      {this.state = BaseState.initial,
      this.failure,
      final List<TacticalModel> tacticals = const [],
      final List<TacticalModel> filteredTacticals = const [],
      final List<MediaModel> medias = const [],
      this.createdTactical,
      this.image})
      : _tacticals = tacticals,
        _filteredTacticals = filteredTacticals,
        _medias = medias;

  @override
  @JsonKey()
  final BaseState state;
  @override
  final Failure? failure;
  final List<TacticalModel> _tacticals;
  @override
  @JsonKey()
  List<TacticalModel> get tacticals {
    if (_tacticals is EqualUnmodifiableListView) return _tacticals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tacticals);
  }

  final List<TacticalModel> _filteredTacticals;
  @override
  @JsonKey()
  List<TacticalModel> get filteredTacticals {
    if (_filteredTacticals is EqualUnmodifiableListView)
      return _filteredTacticals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredTacticals);
  }

  final List<MediaModel> _medias;
  @override
  @JsonKey()
  List<MediaModel> get medias {
    if (_medias is EqualUnmodifiableListView) return _medias;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_medias);
  }

  @override
  final TacticalModel? createdTactical;
  @override
  final File? image;

  @override
  String toString() {
    return 'TacticalState(state: $state, failure: $failure, tacticals: $tacticals, filteredTacticals: $filteredTacticals, medias: $medias, createdTactical: $createdTactical, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TacticalStateImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            const DeepCollectionEquality()
                .equals(other._tacticals, _tacticals) &&
            const DeepCollectionEquality()
                .equals(other._filteredTacticals, _filteredTacticals) &&
            const DeepCollectionEquality().equals(other._medias, _medias) &&
            (identical(other.createdTactical, createdTactical) ||
                other.createdTactical == createdTactical) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      state,
      failure,
      const DeepCollectionEquality().hash(_tacticals),
      const DeepCollectionEquality().hash(_filteredTacticals),
      const DeepCollectionEquality().hash(_medias),
      createdTactical,
      image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TacticalStateImplCopyWith<_$TacticalStateImpl> get copyWith =>
      __$$TacticalStateImplCopyWithImpl<_$TacticalStateImpl>(this, _$identity);
}

abstract class _TacticalState implements TacticalState {
  const factory _TacticalState(
      {final BaseState state,
      final Failure? failure,
      final List<TacticalModel> tacticals,
      final List<TacticalModel> filteredTacticals,
      final List<MediaModel> medias,
      final TacticalModel? createdTactical,
      final File? image}) = _$TacticalStateImpl;

  @override
  BaseState get state;
  @override
  Failure? get failure;
  @override
  List<TacticalModel> get tacticals;
  @override
  List<TacticalModel> get filteredTacticals;
  @override
  List<MediaModel> get medias;
  @override
  TacticalModel? get createdTactical;
  @override
  File? get image;
  @override
  @JsonKey(ignore: true)
  _$$TacticalStateImplCopyWith<_$TacticalStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
