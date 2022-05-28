import 'dart:convert';
import 'dart:developer';
import 'dart:ui';

import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo/core/domain/localization_state.dart';

class LocalizationNotifier extends StateNotifier<LocalizationState> {
  LocalizationNotifier({Locale? locale})
      : super(
          LocalizationState(
            locale: locale,
          ),
        );

  Map<String, String>? _localizedValues;
  VoidCallback? _onLocaleChangedCallback;

  static const String localizedFilePath = 'asset/locale/';
  static const String localizedFileFormat = '.json';
  static const String localizedPrefix = 'localization_';
  static const List<String> supportedLanguages = [
    'English',
    'Bahasa Indonesia',
    'Thailand',
  ];
  static const List<String> supportedLanguagesCodes = [
    'en',
    'id',
    'th',
  ];

  Iterable<Locale> supportedLocales() =>
      supportedLanguagesCodes.map<Locale>((lang) => Locale(lang, ''));

  // set onLocaleChangedCallback(VoidCallback callback) {
  //   _onLocaleChangedCallback = callback;
  // }

  String text(String key) {
    if (_localizedValues == null) {
      return '** $key not found';
    }

    if (!(_localizedValues?.containsKey(key) ?? false)) {
      return '** $key not found';
    }

    return _localizedValues![key]!;
  }

  Future<void> init({
    required String? language,
    required String countryCode,
  }) async {
    if (state.locale == null) {
      await setNewLanguage(language, countryCode);
    }
  }

  // Future<String?> getPreferredLanguage() async {
  //   return getApplicationSavedInformation('${ConstantStrings.language}');
  // }
  //
  // Future<bool> setPreferredLanguage(String lang) async {
  //   return _setApplicationSavedInformation('${ConstantStrings.language}', lang);
  // }

  Future<void> setNewLanguage(
    String? newLanguage,
    String countryCode, {
    bool saveInPrefs = true,
  }) async {
    try{
      String? language = newLanguage;
      // language ??= await getPreferredLanguage();
      language ??= supportedLanguagesCodes.first;
      state = state.copyWith(
        locale: Locale(language, countryCode),
      );

      final String jsonContent = await rootBundle.loadString(
        '$localizedFilePath$localizedPrefix${state.locale!.languageCode}_${state.locale!.countryCode}$localizedFileFormat',
      );
      _localizedValues = Map<String, String>.from(jsonDecode(jsonContent) as Map<String, dynamic>);

      // set deploy country based on language
      // setDeployCountry(language);

      // if (saveInPrefs) {
      //   await setPreferredLanguage(language);
      // }
      _onLocaleChangedCallback?.call();
    }catch(e) {
      log(e.toString(), name: 'localizationNotifier');
    }
  }

// void setDeployCountry(String lang) {
//   switch (lang) {
//     case 'en':
//       SystemConfig.instance.setCountry(DeployCountry.my);
//       break;
//     case 'th':
//       SystemConfig.instance.setCountry(DeployCountry.th);
//       break;
//     case 'id':
//       SystemConfig.instance.setCountry(DeployCountry.id);
//       break;
//     default:
//       SystemConfig.instance.setCountry(DeployCountry.my);
//       break;
//   }
// }

// Future<String?> getApplicationSavedInformation(String name) async {
//   return await _appLibsPreferencesService.getString(
//       key: '${ConstantStrings.storageKey}$name');
// }

// Future<bool> _setApplicationSavedInformation(
//     String name, String value) async {
//   return _appLibsPreferencesService.setString(
//       key: '${ConstantStrings.storageKey}$name', value: value);
// }
}
