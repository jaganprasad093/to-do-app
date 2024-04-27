import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:to_do_app/model/todo_model.dart';
import 'package:to_do_app/view/homepage/homepage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  // Hive.registerAdapter(TodoModelAdapter());

  await Hive.openBox<Todo_Model>("todo");

  runApp(To_do_app());
}

class To_do_app extends StatelessWidget {
  const To_do_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
    );
  }
}
