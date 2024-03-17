import 'dart:math';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:learn_objectbox/app/data/local_db/table/table_todo.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        appBar: AppBar(
          title: const Text('HomeView'),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            for (var i in controller.data.value)
              ListTile(
                title: Text(i.title),
                trailing: IconButton(
                  onPressed: () {
                    controller.funcDelete(id: i.id ?? 0);
                  },
                  icon: const Icon(
                    Icons.delete_outline_rounded,
                  ),
                ),
              ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            controller.funcInsert(
                data: TableTodo(title: Random().nextDouble().toString()));
          },
          child: Icon(Icons.add_rounded),
        ),
      );
    });
  }
}
