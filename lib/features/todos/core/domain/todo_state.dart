import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'todo_state.freezed.dart';

@freezed
class TodoState with _$TodoState {
  const TodoState._();

  const factory TodoState({
    required String title,
    required DateTime startDate,
    required DateTime endDate,
    @Default(false) bool isCompleted,
  }) = _TodoState;

  String get status => isCompleted ? 'Completed' : 'Incomplete';

  String get dateMask => 'dd MMM yyyy';

  String get formattedStartDate {
    final DateFormat dateFormat = DateFormat(dateMask);
    return dateFormat.format(startDate);
  }

  String get formattedEndDate {
    final DateFormat dateFormat = DateFormat(dateMask);
    return dateFormat.format(endDate);
  }

  String get timeLeft {
    final Duration _duration = DateTime(endDate.year, endDate.month, endDate.day).difference(DateTime.now());
    final int _hours = _duration.inHours;
    final int _minute = _duration.inMinutes - _hours*60;
    if(endDate.isBefore(DateTime.now()) || _duration == Duration.zero){
      return '-';
    }else{
      String _timeLeft = '';
      if(_hours > 0){
        _timeLeft += '$_hours hrs ';
      }
      if(_minute > 0){
        _timeLeft += '$_minute min ';
      }
      return _timeLeft.isEmpty ? '-' : _timeLeft;
    }
  }
}
