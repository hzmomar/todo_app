import 'package:auto_route/auto_route.dart';
import 'package:todo/features/splash/splash_page.dart';
import 'package:todo/features/todos/details/presentation/details_page.dart';
import 'package:todo/features/todos/list/presentation/todos_list_page.dart';

@MaterialAutoRouter(
  routes: [
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: TodoListPage, path: 'todo-list'),
    MaterialRoute(page: DetailsPage, path: 'todo-details'),
  ],
  replaceInRouteName: 'Page,Route',
)
class $AppRouter {}
