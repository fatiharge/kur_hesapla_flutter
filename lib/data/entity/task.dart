import 'package:objectbox/objectbox.dart';

@Entity()
class Task {
  Task({required this.text, this.id = 0, this.status = false});

  @Id()
  int id;
  String text;

  bool status;
}
