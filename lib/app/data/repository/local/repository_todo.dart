import 'package:learn_objectbox/app/data/local_db/local_db.dart';
import 'package:learn_objectbox/app/data/local_db/table/table_todo.dart';

class RepositoryTodo {
  Future<List<TableTodo>> getAll() async {
    try {
      var response = await db.store.box<TableTodo>().getAllAsync();
      return response;
    } catch (e) {
      return <TableTodo>[];
    }
  }

  Future<TableTodo?> getId({required int id}) async {
    try {
      var response = await db.store.box<TableTodo>().getAsync(id);
      return response;
    } catch (e) {
      return null;
    }
  }

  Future<bool> deleteId({required int id}) async {
    try {
      var response = await db.store.box<TableTodo>().removeAsync(id);
      return response;
    } catch (e) {
      return false;
    }
  }
}