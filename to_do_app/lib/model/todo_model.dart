import 'package:hive_flutter/hive_flutter.dart';
part 'todo_model.g.dart';

@HiveType(typeId: 1)
class Todo_Model {
  @HiveField(0)
  String title;
  @HiveField(1)
  String category;

  Todo_Model({required this.title, required this.category});
}
