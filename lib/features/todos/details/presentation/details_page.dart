import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo/core/presentation/app_widget.dart';
import 'package:todo/core/presentation/roboto_style.dart';
import 'package:todo/features/todos/core/domain/todo_state.dart';
import 'package:todo/features/todos/core/shared/providers.dart';

class DetailsPage extends HookConsumerWidget {
  final TodoState? todo;
  final int? index;

  const DetailsPage({
    Key? key,
    this.todo,
    this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dateMask = todo?.dateMask ?? 'dd MMM yyyy';
    final titleController = useTextEditingController(text: todo?.title);
    final startDateController = useTextEditingController(
      text: todo?.startDate.toString(),
    );
    final endDateController = useTextEditingController(
      text: todo?.endDate.toString(),
    );
    final formKey = GlobalKey<FormState>();
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          iconTheme: const IconThemeData(
            color: Colors.black, //change your color here
          ),
          backgroundColor: Colors.orange,
          title: Text(index != null ? 'Update To-Do List' : 'Add new To-Do List', style: RobotoStyle.h4),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 24),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Title
                const Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Text('To-Do Title'),
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    minLines: 5,
                    maxLines: 10,
                    controller: titleController,
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return 'Please insert To-Do Title';
                      }
                      return null;
                    },
                  ),
                ),

                /// Start Date
                const Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Text('Start Date'),
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: DateTimePicker(
                    dateMask: dateMask,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.keyboard_arrow_down_rounded),
                    ),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                    controller: startDateController,
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return 'Please select Start Date';
                      }

                      if (DateTime.parse(endDateController.text)
                          .difference(DateTime.parse(startDateController.text))
                          .isNegative) {
                        return 'Start Date must be earlier than End Date';
                      }
                      return null;
                    },
                  ),
                ),

                /// End Date
                const Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Text('End Date'),
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: DateTimePicker(
                    dateMask: dateMask,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.keyboard_arrow_down_rounded),
                    ),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                    controller: endDateController,
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return 'Please Select End Date';
                      }
                      return null;
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: SafeArea(
          child: ElevatedButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.all(const EdgeInsets.all(24)),
              backgroundColor: MaterialStateProperty.all(Colors.black),
            ),
            onPressed: () {
              if (formKey.currentState?.validate() ?? false) {
                if (index != null) {
                  ref.read(todosProvider.notifier).updateTodo(
                        TodoState(
                          title: titleController.text,
                          startDate: DateTime.parse(startDateController.text),
                          endDate: DateTime.parse(endDateController.text),
                        ),
                        index!,
                      );
                } else {
                  ref.read(todosProvider.notifier).addTodo(
                        title: titleController.text,
                        startDate: DateTime.parse(startDateController.text),
                        endDate: DateTime.parse(endDateController.text),
                      );
                }
                appRouter.pop();
              }
            },
            child: Text(index != null ? 'Update' : 'Create Now'),
          ),
        ),
      ),
    );
  }
}
