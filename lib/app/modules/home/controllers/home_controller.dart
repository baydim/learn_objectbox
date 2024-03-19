import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_objectbox/app/data/local_db/table/table_todo.dart';
import 'package:learn_objectbox/app/data/repository/local/repository_todo.dart';

import '../../../data/local_db/local_db.dart';

class HomeController extends GetxController {
  var data = <TableTodo>[].obs;

  funcGetAll() async {
    // data.value = await RepositoryTodo.getAll();

    (db.store.box<TableTodo>().query().watch().map((event) => event.find()))
        .forEach((element) {
      data.value = element;
    });
  }

  funcGetId({required int id}) async {
    var data = await RepositoryTodo.getId(id: id);
    Get.dialog(
      SimpleDialog(
        children: [
          Center(
            child: Text(data?.title ?? "KOSONG"),
          ),
        ],
      ),
    );
  }

  funcDelete({required int id}) async {
    await RepositoryTodo.deleteId(id: id);
  }

  funcInsert({required TableTodo data}) async {
    await RepositoryTodo.insert(data: data);
  }

  @override
  void onInit() async {
    data.value = await RepositoryTodo.getAll();
    funcGetAll();
    super.onInit();
  }
}
