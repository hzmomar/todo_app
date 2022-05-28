// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'localization_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocalizationState {
  Locale? get locale => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocalizationStateCopyWith<LocalizationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalizationStateCopyWith<$Res> {
  factory $LocalizationStateCopyWith(
          LocalizationState value, $Res Function(LocalizationState) then) =
      _$LocalizationStateCopyWithImpl<$Res>;
  $Res call({Locale? locale});
}

/// @nodoc
class _$LocalizationStateCopyWithImpl<$Res>
    implements $LocalizationStateCopyWith<$Res> {
  _$LocalizationStateCopyWithImpl(this._value, this._then);

  final LocalizationState _value;
  // ignore: unused_field
  final $Res Function(LocalizationState) _then;

  @override
  $Res call({
    Object? locale = freezed,
  }) {
    return _then(_value.copyWith(
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale?,
    ));
  }
}

/// @nodoc
abstract class _$$_LocalizationStateCopyWith<$Res>
    implements $LocalizationStateCopyWith<$Res> {
  factory _$$_LocalizationStateCopyWith(_$_LocalizationState value,
          $Res Function(_$_LocalizationState) then) =
      __$$_LocalizationStateCopyWithImpl<$Res>;
  @override
  $Res call({Locale? locale});
}

/// @nodoc
class __$$_LocalizationStateCopyWithImpl<$Res>
    extends _$LocalizationStateCopyWithImpl<$Res>
    implements _$$_LocalizationStateCopyWith<$Res> {
  __$$_LocalizationStateCopyWithImpl(
      _$_LocalizationState _value, $Res Function(_$_LocalizationState) _then)
      : super(_value, (v) => _then(v as _$_LocalizationState));

  @override
  _$_LocalizationState get _value => super._value as _$_LocalizationState;

  @override
  $Res call({
    Object? locale = freezed,
  }) {
    return _then(_$_LocalizationState(
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale?,
    ));
  }
}

/// @nodoc

class _$_LocalizationState extends _LocalizationState
    with DiagnosticableTreeMixin {
  const _$_LocalizationState({this.locale}) : super._();

  @override
  final Locale? locale;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocalizationState(locale: $locale)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocalizationState'))
      ..add(DiagnosticsProperty('locale', locale));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocalizationState &&
            const DeepCollectionEquality().equals(other.locale, locale));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(locale));

  @JsonKey(ignore: true)
  @override
  _$$_LocalizationStateCopyWith<_$_LocalizationState> get copyWith =>
      __$$_LocalizationStateCopyWithImpl<_$_LocalizationState>(
          this, _$identity);
}

abstract class _LocalizationState extends LocalizationState {
  const factory _LocalizationState({final Locale? locale}) =
      _$_LocalizationState;
  const _LocalizationState._() : super._();

  @override
  Locale? get locale => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LocalizationStateCopyWith<_$_LocalizationState> get copyWith =>
      throw _privateConstructorUsedError;
}
