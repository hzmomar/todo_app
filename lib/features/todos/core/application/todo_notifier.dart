import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo/features/todos/core/domain/todo_state.dart';

class TodoNotifier extends StateNotifier<List<TodoState>> {
  TodoNotifier() : super([]);

  void addTodo({
    required String title,
    required DateTime startDate,
    required DateTime endDate,
  }) {
    state = [
      ...state,
      TodoState(title: title, startDate: startDate, endDate: endDate),
    ];
  }

  void toggleStatus(int index) {
    final List<TodoState> _tempList = [];
    for (int i = 0; i < state.length; i++) {
      if (i == index) {
        _tempList.add(
          state[i].copyWith(isCompleted: !state[i].isCompleted),
        );
      } else {
        _tempList.add(state[i]);
      }
    }
    state = _tempList;
  }

  void updateTodo(TodoState todo, int index) {
    final List<TodoState> _tempList = [];
    for (int i = 0; i < state.length; i++) {
      if (i == index) {
        _tempList.add(todo);
      } else {
        _tempList.add(state[i]);
      }
    }

    state = _tempList;
  }
}
