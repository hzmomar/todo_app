import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo/core/presentation/routes/app_router.gr.dart';

final initializationProvider = FutureProvider<Unit>((ref) async {
  await Future.delayed(const Duration(seconds: 1));
  return unit;
});

final AppRouter appRouter = AppRouter();

class AppWidget extends ConsumerWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(initializationProvider, (previous, next) {
      appRouter.pushAndPopUntil(const TodoListRoute(), predicate: (_) => false);
    });
    return MaterialApp.router(
      title: 'Todo',
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }
}
