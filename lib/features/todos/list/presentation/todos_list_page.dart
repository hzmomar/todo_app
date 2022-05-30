import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo/core/presentation/app_widget.dart';
import 'package:todo/core/presentation/routes/app_router.gr.dart';
import 'package:todo/features/todos/core/domain/todo_state.dart';
import 'package:todo/features/todos/core/shared/providers.dart';
import 'package:todo/features/todos/list/core/presentation/todo_item_card.dart';

class TodoListPage extends ConsumerWidget {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<TodoState> todos = ref.watch(todosProvider);
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          'To-Do List',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.orange,
      ),
      body: todos.isNotEmpty
          ? ListView.builder(
              padding: const EdgeInsets.only(bottom: 100),
              itemCount: todos.length,
              itemBuilder: (context, index) {
                final todo =
                    ref.watch(todosProvider.select((value) => value[index]));
                return TodoCard(
                  todo: todo,
                  onCardTap: () {
                    appRouter.push(DetailsRoute(index: index, todo: todo));
                  },
                  onCheckBoxTap: () {
                    ref.read(todosProvider.notifier).toggleStatus(index);
                  },
                );
              },
            )
          : const Center(
              child: Text('To-Do is empty'),
            ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        onPressed: () {
          appRouter.push(DetailsRoute());
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
