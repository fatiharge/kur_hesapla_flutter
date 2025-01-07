import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:kur_hesapla/data/entity/task.dart';
import 'package:kur_hesapla/data/objectbox.dart';
import 'package:kur_hesapla/generated/objectbox.g.dart';

@injectable
class TaskBox {
  final Box<Task> taskBox = GetIt.instance<ObjectBox>().store.box<Task>();

  Task? getTask(int id) {
    return taskBox.get(id);
  }

  List<Task> getTasks() {
    return taskBox.getAll();
  }

  void putTask(Task task) {
    taskBox.put(task);
  }

  void removeTask(int id) {
    taskBox.remove(id);
  }

  void removeAllTasks() {
    taskBox.removeAll();
  }
}
