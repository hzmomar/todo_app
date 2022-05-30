import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo/core/presentation/roboto_style.dart';
import 'package:todo/features/todos/core/domain/todo_state.dart';

class TodoCard extends ConsumerWidget {
  const TodoCard({
    Key? key,
    required this.todo,
    this.onCardTap,
    this.onCheckBoxTap,
  }) : super(key: key);

  final TodoState todo;
  final GestureTapCallback? onCardTap;
  final GestureTapCallback? onCheckBoxTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: onCardTap,
      child: Card(
        margin: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Title
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: Text(
                      todo.title,
                      style: RobotoStyle.subtitle,
                    ),
                  ),

                  /// Dates
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// Start Date
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 4),
                            child: Text(
                              'Start Date',
                              style: RobotoStyle.overLine.copyWith(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Text(
                            todo.formattedStartDate,
                            style: RobotoStyle.overLine.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                      /// End Date
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 4),
                            child: Text(
                              'End Date',
                              style: RobotoStyle.overLine.copyWith(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Text(
                            todo.formattedEndDate,
                            style: RobotoStyle.overLine.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                      /// Time Left
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 4),
                            child: Text(
                              'Time left',
                              style: RobotoStyle.overLine.copyWith(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Text(
                            todo.timeLeft,
                            style: RobotoStyle.overLine.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.orange.withOpacity(0.2),
                borderRadius:
                const BorderRadius.vertical(bottom: Radius.circular(4)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// Status
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Status',
                            style:
                            RobotoStyle.caption.copyWith(color: Colors.grey),
                          ),
                          TextSpan(
                            text: '  ${todo.status}',
                            style: RobotoStyle.caption
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),

                  /// complete checkbox
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Tick if completed',
                        style: RobotoStyle.caption,
                      ),
                      Checkbox(
                        value: todo.isCompleted,
                        onChanged: (value) {
                          onCheckBoxTap?.call();
                        },
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
