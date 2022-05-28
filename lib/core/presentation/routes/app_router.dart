import 'package:auto_route/auto_route.dart';
import 'package:todo/features/splash/splash_page.dart';
import 'package:todo/features/todo/presentation/todo_page.dart';

@MaterialAutoRouter(
  routes: [
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: TodoPage, path: 'todo'),
  ],
  replaceInRouteName: 'Page,Route',
)
class $AppRouter {}
