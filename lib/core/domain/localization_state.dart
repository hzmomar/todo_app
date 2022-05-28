import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'localization_state.freezed.dart';

@freezed
class LocalizationState with _$LocalizationState {
  const LocalizationState._();

  const factory LocalizationState({
    Locale? locale,
  }) = _LocalizationState;

  String get currentLanguage => locale?.languageCode ?? 'en';
}
