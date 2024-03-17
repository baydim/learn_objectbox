import 'package:learn_objectbox/app/data/local_db/local_db.dart';
import 'package:learn_objectbox/app/data/local_db/table/table_todo.dart';

class RepositoryTodo {
  static Future<List<TableTodo>> getAll() async {
    try {
      var response = await db.store.box<TableTodo>().getAllAsync();
      return response;
    } catch (e) {
      return <TableTodo>[];
    }
  }

  static Future<TableTodo?> getId({required int id}) async {
    try {
      var response = await db.store.box<TableTodo>().getAsync(id);
      return response;
    } catch (e) {
      return null;
    }
  }

  static Future<bool> deleteId({required int id}) async {
    try {
      var response = await db.store.box<TableTodo>().removeAsync(id);
      return response;
    } catch (e) {
      return false;
    }
  }

  static Future<int?> insert({required TableTodo data}) async {
    try {
      var responnse = await db.store.box<TableTodo>().putAsync(data);
      return responnse;
    } catch (e) {
      return null;
    }
  }
}
