import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo/core/domain/localization_state.dart';
import 'package:todo/core/shared/localization.dart';

final localizationProvider =
    StateNotifierProvider<LocalizationNotifier, LocalizationState>(
  (ref) => LocalizationNotifier(),
);
