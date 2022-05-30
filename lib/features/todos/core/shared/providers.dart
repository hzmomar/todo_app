import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo/features/todos/core/application/todo_notifier.dart';
import 'package:todo/features/todos/core/domain/todo_state.dart';

final todosProvider = StateNotifierProvider<TodoNotifier, List<TodoState>>(
  (ref) => TodoNotifier(),
);
