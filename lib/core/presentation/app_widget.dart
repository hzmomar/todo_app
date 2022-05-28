import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo/core/domain/localization_state.dart';
import 'package:todo/core/presentation/routes/app_router.gr.dart';
import 'package:todo/core/shared/providers.dart';

final initializationProvider = FutureProvider<Unit>((ref) async {
  final localizationNotifier = ref.read(localizationProvider.notifier);
  await localizationNotifier.init(language: 'en', countryCode: 'UK');
  await Future.delayed(const Duration(seconds: 2));
  return unit;
});

class AppWidget extends ConsumerWidget {
  AppWidget({Key? key}) : super(key: key);

  final AppRouter appRouter = AppRouter();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(initializationProvider, (previous, next) {
      appRouter.pushAndPopUntil(const TodoRoute(), predicate: (_) => false);
    });
    ref.listen<LocalizationState>(localizationProvider, (previous, next) {
      if (previous?.currentLanguage != next.currentLanguage) {}
    });
    return MaterialApp.router(
      title: 'Todo',
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }
}
