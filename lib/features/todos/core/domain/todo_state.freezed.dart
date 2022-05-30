// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoState {
  String get title => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoStateCopyWith<TodoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoStateCopyWith<$Res> {
  factory $TodoStateCopyWith(TodoState value, $Res Function(TodoState) then) =
      _$TodoStateCopyWithImpl<$Res>;
  $Res call(
      {String title, DateTime startDate, DateTime endDate, bool isCompleted});
}

/// @nodoc
class _$TodoStateCopyWithImpl<$Res> implements $TodoStateCopyWith<$Res> {
  _$TodoStateCopyWithImpl(this._value, this._then);

  final TodoState _value;
  // ignore: unused_field
  final $Res Function(TodoState) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? isCompleted = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isCompleted: isCompleted == freezed
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_TodoStateCopyWith<$Res> implements $TodoStateCopyWith<$Res> {
  factory _$$_TodoStateCopyWith(
          _$_TodoState value, $Res Function(_$_TodoState) then) =
      __$$_TodoStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title, DateTime startDate, DateTime endDate, bool isCompleted});
}

/// @nodoc
class __$$_TodoStateCopyWithImpl<$Res> extends _$TodoStateCopyWithImpl<$Res>
    implements _$$_TodoStateCopyWith<$Res> {
  __$$_TodoStateCopyWithImpl(
      _$_TodoState _value, $Res Function(_$_TodoState) _then)
      : super(_value, (v) => _then(v as _$_TodoState));

  @override
  _$_TodoState get _value => super._value as _$_TodoState;

  @override
  $Res call({
    Object? title = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? isCompleted = freezed,
  }) {
    return _then(_$_TodoState(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isCompleted: isCompleted == freezed
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TodoState extends _TodoState with DiagnosticableTreeMixin {
  const _$_TodoState(
      {required this.title,
      required this.startDate,
      required this.endDate,
      this.isCompleted = false})
      : super._();

  @override
  final String title;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  @JsonKey()
  final bool isCompleted;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodoState(title: $title, startDate: $startDate, endDate: $endDate, isCompleted: $isCompleted)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodoState'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('startDate', startDate))
      ..add(DiagnosticsProperty('endDate', endDate))
      ..add(DiagnosticsProperty('isCompleted', isCompleted));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoState &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality().equals(other.endDate, endDate) &&
            const DeepCollectionEquality()
                .equals(other.isCompleted, isCompleted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(startDate),
      const DeepCollectionEquality().hash(endDate),
      const DeepCollectionEquality().hash(isCompleted));

  @JsonKey(ignore: true)
  @override
  _$$_TodoStateCopyWith<_$_TodoState> get copyWith =>
      __$$_TodoStateCopyWithImpl<_$_TodoState>(this, _$identity);
}

abstract class _TodoState extends TodoState {
  const factory _TodoState(
      {required final String title,
      required final DateTime startDate,
      required final DateTime endDate,
      final bool isCompleted}) = _$_TodoState;
  const _TodoState._() : super._();

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  DateTime get startDate => throw _privateConstructorUsedError;
  @override
  DateTime get endDate => throw _privateConstructorUsedError;
  @override
  bool get isCompleted => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TodoStateCopyWith<_$_TodoState> get copyWith =>
      throw _privateConstructorUsedError;
}
