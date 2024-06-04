import 'package:navegacao/todo.dart';

class Todos {
  final todos = List.generate(50, (index) => Todo(
  'Todo $index',
  'A description to do $index'
),);
}
