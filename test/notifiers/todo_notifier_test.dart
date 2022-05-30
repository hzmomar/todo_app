import 'package:flutter_test/flutter_test.dart';
import 'package:todo/features/todos/core/application/todo_notifier.dart';

void main() {
  late TodoNotifier mockTodoProvider;

  setUpAll(() {
    mockTodoProvider = TodoNotifier();
  });

  group('Todo Notifier', () {
    test('by default no list available', () {
      expect(mockTodoProvider.debugState.length, 0);
    });
    test('When Add todo then the list size become 1', () {
      mockTodoProvider.addTodo(
        title: 'mock title',
        startDate: DateTime.now(),
        endDate: DateTime.now(),
      );

      expect(mockTodoProvider.debugState.length, 1);
    });
    test('When tick completed checkbox, the status will return Completed',
        () {
      mockTodoProvider.toggleStatus(0);
      expect(mockTodoProvider.debugState[0].status, 'Completed');
    });

    test('The date format should follow dd MMM yyyy', () {
      mockTodoProvider.addTodo(
        title: 'Mock Date',
        startDate: DateTime(2022, 05, 22),
        endDate: DateTime(2022, 05, 23),
      );
      expect(mockTodoProvider.debugState.last.formattedStartDate, '22 May 2022');
      expect(mockTodoProvider.debugState.last.formattedEndDate, '23 May 2022');
    });

    test(
      "When Current Date is before End Date, time left will return time left",
      () {
        if (DateTime.now().isBefore(mockTodoProvider.debugState.last.endDate)) {
          expect(mockTodoProvider.debugState.last.timeLeft, isNotNull);
        }
      },
    );

    test(
      "When Current Date is passed End Date, time left will return '-'",
      () {
        mockTodoProvider.addTodo(
          title: 'Mock passed date',
          startDate: DateTime.now(),
          endDate: DateTime(2022, 01, 10),
        );
        if(!DateTime.now().isBefore(mockTodoProvider.debugState.last.endDate)){
          expect(mockTodoProvider.debugState.last.timeLeft, '-');
        }
      },
    );
  });
}
