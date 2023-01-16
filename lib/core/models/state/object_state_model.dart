import 'package:freezed_annotation/freezed_annotation.dart';

part 'object_state_model.freezed.dart';

@freezed
abstract class ObjectStateModel<T> with _$ObjectStateModel<T> {
  factory ObjectStateModel({
    @Default(null) T? item,
    @Default(1) int page,
    @Default(false) bool isLoading,
    @Default(false) bool reachedMax,
  }) = _ObjectStateModel;

  const ObjectStateModel._();
}
