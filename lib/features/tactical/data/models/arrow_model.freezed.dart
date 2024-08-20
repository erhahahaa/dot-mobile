// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'arrow_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ArrowModel _$ArrowModelFromJson(Map<String, dynamic> json) {
  return _ArrowModel.fromJson(json);
}

/// @nodoc
mixin _$ArrowModel {
  double get startX => throw _privateConstructorUsedError;
  double get startY => throw _privateConstructorUsedError;
  double get endX => throw _privateConstructorUsedError;
  double get endY => throw _privateConstructorUsedError;
  int get hexColor => throw _privateConstructorUsedError;

  /// Serializes this ArrowModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ArrowModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArrowModelCopyWith<ArrowModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArrowModelCopyWith<$Res> {
  factory $ArrowModelCopyWith(
          ArrowModel value, $Res Function(ArrowModel) then) =
      _$ArrowModelCopyWithImpl<$Res, ArrowModel>;
  @useResult
  $Res call(
      {double startX, double startY, double endX, double endY, int hexColor});
}

/// @nodoc
class _$ArrowModelCopyWithImpl<$Res, $Val extends ArrowModel>
    implements $ArrowModelCopyWith<$Res> {
  _$ArrowModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArrowModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startX = null,
    Object? startY = null,
    Object? endX = null,
    Object? endY = null,
    Object? hexColor = null,
  }) {
    return _then(_value.copyWith(
      startX: null == startX
          ? _value.startX
          : startX // ignore: cast_nullable_to_non_nullable
              as double,
      startY: null == startY
          ? _value.startY
          : startY // ignore: cast_nullable_to_non_nullable
              as double,
      endX: null == endX
          ? _value.endX
          : endX // ignore: cast_nullable_to_non_nullable
              as double,
      endY: null == endY
          ? _value.endY
          : endY // ignore: cast_nullable_to_non_nullable
              as double,
      hexColor: null == hexColor
          ? _value.hexColor
          : hexColor // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArrowModelImplCopyWith<$Res>
    implements $ArrowModelCopyWith<$Res> {
  factory _$$ArrowModelImplCopyWith(
          _$ArrowModelImpl value, $Res Function(_$ArrowModelImpl) then) =
      __$$ArrowModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double startX, double startY, double endX, double endY, int hexColor});
}

/// @nodoc
class __$$ArrowModelImplCopyWithImpl<$Res>
    extends _$ArrowModelCopyWithImpl<$Res, _$ArrowModelImpl>
    implements _$$ArrowModelImplCopyWith<$Res> {
  __$$ArrowModelImplCopyWithImpl(
      _$ArrowModelImpl _value, $Res Function(_$ArrowModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ArrowModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startX = null,
    Object? startY = null,
    Object? endX = null,
    Object? endY = null,
    Object? hexColor = null,
  }) {
    return _then(_$ArrowModelImpl(
      startX: null == startX
          ? _value.startX
          : startX // ignore: cast_nullable_to_non_nullable
              as double,
      startY: null == startY
          ? _value.startY
          : startY // ignore: cast_nullable_to_non_nullable
              as double,
      endX: null == endX
          ? _value.endX
          : endX // ignore: cast_nullable_to_non_nullable
              as double,
      endY: null == endY
          ? _value.endY
          : endY // ignore: cast_nullable_to_non_nullable
              as double,
      hexColor: null == hexColor
          ? _value.hexColor
          : hexColor // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArrowModelImpl extends _ArrowModel {
  _$ArrowModelImpl(
      {this.startX = 0,
      this.startY = 0,
      this.endX = 0,
      this.endY = 0,
      this.hexColor = 0xFFC90508})
      : super._();

  factory _$ArrowModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArrowModelImplFromJson(json);

  @override
  @JsonKey()
  final double startX;
  @override
  @JsonKey()
  final double startY;
  @override
  @JsonKey()
  final double endX;
  @override
  @JsonKey()
  final double endY;
  @override
  @JsonKey()
  final int hexColor;

  @override
  String toString() {
    return 'ArrowModel(startX: $startX, startY: $startY, endX: $endX, endY: $endY, hexColor: $hexColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArrowModelImpl &&
            (identical(other.startX, startX) || other.startX == startX) &&
            (identical(other.startY, startY) || other.startY == startY) &&
            (identical(other.endX, endX) || other.endX == endX) &&
            (identical(other.endY, endY) || other.endY == endY) &&
            (identical(other.hexColor, hexColor) ||
                other.hexColor == hexColor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, startX, startY, endX, endY, hexColor);

  /// Create a copy of ArrowModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArrowModelImplCopyWith<_$ArrowModelImpl> get copyWith =>
      __$$ArrowModelImplCopyWithImpl<_$ArrowModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArrowModelImplToJson(
      this,
    );
  }
}

abstract class _ArrowModel extends ArrowModel {
  factory _ArrowModel(
      {final double startX,
      final double startY,
      final double endX,
      final double endY,
      final int hexColor}) = _$ArrowModelImpl;
  _ArrowModel._() : super._();

  factory _ArrowModel.fromJson(Map<String, dynamic> json) =
      _$ArrowModelImpl.fromJson;

  @override
  double get startX;
  @override
  double get startY;
  @override
  double get endX;
  @override
  double get endY;
  @override
  int get hexColor;

  /// Create a copy of ArrowModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArrowModelImplCopyWith<_$ArrowModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
