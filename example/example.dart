import 'dart:async';

import 'package:task_queue/task_queue.dart';

void main() async {
  final queue = TaskQueue();
  for (final i in List<int>.generate(1000, (i) => i)) {
    unawaited(queue.add(() async => print('Processed $i')));
  }
  await queue.tasksComplete;
}
