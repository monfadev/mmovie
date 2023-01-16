// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'object_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ObjectStateModel<T> {
  T? get item => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get reachedMax => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ObjectStateModelCopyWith<T, ObjectStateModel<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObjectStateModelCopyWith<T, $Res> {
  factory $ObjectStateModelCopyWith(
          ObjectStateModel<T> value, $Res Function(ObjectStateModel<T>) then) =
      _$ObjectStateModelCopyWithImpl<T, $Res, ObjectStateModel<T>>;
  @useResult
  $Res call({T? item, int page, bool isLoading, bool reachedMax});
}

/// @nodoc
class _$ObjectStateModelCopyWithImpl<T, $Res, $Val extends ObjectStateModel<T>>
    implements $ObjectStateModelCopyWith<T, $Res> {
  _$ObjectStateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = freezed,
    Object? page = null,
    Object? isLoading = null,
    Object? reachedMax = null,
  }) {
    return _then(_value.copyWith(
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as T?,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      reachedMax: null == reachedMax
          ? _value.reachedMax
          : reachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ObjectStateModelCopyWith<T, $Res>
    implements $ObjectStateModelCopyWith<T, $Res> {
  factory _$$_ObjectStateModelCopyWith(_$_ObjectStateModel<T> value,
          $Res Function(_$_ObjectStateModel<T>) then) =
      __$$_ObjectStateModelCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T? item, int page, bool isLoading, bool reachedMax});
}

/// @nodoc
class __$$_ObjectStateModelCopyWithImpl<T, $Res>
    extends _$ObjectStateModelCopyWithImpl<T, $Res, _$_ObjectStateModel<T>>
    implements _$$_ObjectStateModelCopyWith<T, $Res> {
  __$$_ObjectStateModelCopyWithImpl(_$_ObjectStateModel<T> _value,
      $Res Function(_$_ObjectStateModel<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = freezed,
    Object? page = null,
    Object? isLoading = null,
    Object? reachedMax = null,
  }) {
    return _then(_$_ObjectStateModel<T>(
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as T?,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      reachedMax: null == reachedMax
          ? _value.reachedMax
          : reachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ObjectStateModel<T> extends _ObjectStateModel<T> {
  _$_ObjectStateModel(
      {this.item = null,
      this.page = 1,
      this.isLoading = false,
      this.reachedMax = false})
      : super._();

  @override
  @JsonKey()
  final T? item;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool reachedMax;

  @override
  String toString() {
    return 'ObjectStateModel<$T>(item: $item, page: $page, isLoading: $isLoading, reachedMax: $reachedMax)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ObjectStateModel<T> &&
            const DeepCollectionEquality().equals(other.item, item) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.reachedMax, reachedMax) ||
                other.reachedMax == reachedMax));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(item), page, isLoading, reachedMax);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ObjectStateModelCopyWith<T, _$_ObjectStateModel<T>> get copyWith =>
      __$$_ObjectStateModelCopyWithImpl<T, _$_ObjectStateModel<T>>(
          this, _$identity);
}

abstract class _ObjectStateModel<T> extends ObjectStateModel<T> {
  factory _ObjectStateModel(
      {final T? item,
      final int page,
      final bool isLoading,
      final bool reachedMax}) = _$_ObjectStateModel<T>;
  _ObjectStateModel._() : super._();

  @override
  T? get item;
  @override
  int get page;
  @override
  bool get isLoading;
  @override
  bool get reachedMax;
  @override
  @JsonKey(ignore: true)
  _$$_ObjectStateModelCopyWith<T, _$_ObjectStateModel<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
