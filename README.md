`TaskQueue` copied from `flutter_tools` for use in other Dart tools

## Example

<!-- embedme example/example.dart -->
```dart
import 'dart:async';

import 'package:flutter_tools_task_queue/flutter_tools_task_queue.dart';

void main() async {
  final queue = TaskQueue();
  for (final i in List<int>.generate(1000, (i) => i)) {
    unawaited(queue.add(() async => print('Processed $i')));
  }
  await queue.tasksComplete;
}

```
