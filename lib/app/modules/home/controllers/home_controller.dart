import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_objectbox/app/data/local_db/table/table_todo.dart';
import 'package:learn_objectbox/app/data/repository/local/repository_todo.dart';

class HomeController extends GetxController {
  var data = <TableTodo>[].obs;

  funcGetAll() async {
    data.value = await RepositoryTodo.getAll();
  }

  funcGetId({required int id}) async {
    var data = await RepositoryTodo.getId(id: id);
    Get.dialog(Dialog(
      child: Center(
        child: Text(data?.title ?? "KOSONG"),
      ),
    ));
  }

  funcDelete({required int id}) async {
    await RepositoryTodo.deleteId(id: id);
  }

  @override
  void onInit() {
    super.onInit();
  }
}
