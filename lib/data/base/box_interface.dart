import 'package:objectbox/objectbox.dart';

abstract class BoxInterface<T> {
  Box<T> get box;
}
