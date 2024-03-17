import 'package:objectbox/objectbox.dart';

@Entity()
class TableTodo {
  int? id;
  String title;

  TableTodo({this.id, required this.title});
}
