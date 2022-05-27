import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_failure.freezed.dart';

@freezed
class TodoFailure with _$TodoFailure {
  const TodoFailure._();
  const factory TodoFailure() = _TodoFailure;
}