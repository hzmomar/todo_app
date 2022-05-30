// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../../../features/splash/splash_page.dart' as _i1;
import '../../../features/todos/core/domain/todo_state.dart' as _i6;
import '../../../features/todos/details/presentation/details_page.dart' as _i3;
import '../../../features/todos/list/presentation/todos_list_page.dart' as _i2;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    TodoListRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.TodoListPage());
    },
    DetailsRoute.name: (routeData) {
      final args = routeData.argsAs<DetailsRouteArgs>(
          orElse: () => const DetailsRouteArgs());
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.DetailsPage(
              key: args.key, todo: args.todo, index: args.index));
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(SplashRoute.name, path: '/'),
        _i4.RouteConfig(TodoListRoute.name, path: 'todo-list'),
        _i4.RouteConfig(DetailsRoute.name, path: 'todo-details')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i4.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.TodoListPage]
class TodoListRoute extends _i4.PageRouteInfo<void> {
  const TodoListRoute() : super(TodoListRoute.name, path: 'todo-list');

  static const String name = 'TodoListRoute';
}

/// generated route for
/// [_i3.DetailsPage]
class DetailsRoute extends _i4.PageRouteInfo<DetailsRouteArgs> {
  DetailsRoute({_i5.Key? key, _i6.TodoState? todo, int? index})
      : super(DetailsRoute.name,
            path: 'todo-details',
            args: DetailsRouteArgs(key: key, todo: todo, index: index));

  static const String name = 'DetailsRoute';
}

class DetailsRouteArgs {
  const DetailsRouteArgs({this.key, this.todo, this.index});

  final _i5.Key? key;

  final _i6.TodoState? todo;

  final int? index;

  @override
  String toString() {
    return 'DetailsRouteArgs{key: $key, todo: $todo, index: $index}';
  }
}
