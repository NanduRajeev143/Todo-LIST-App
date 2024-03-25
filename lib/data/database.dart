import 'package:hive_flutter/hive_flutter.dart';

class TodoDataBase {
  List toDoList = [];

  final _myBox = Hive.box('mybox');

  void createInitialData() {
    toDoList = [
      ["Custom Todo 1 (Slide to Delete)", false],
      ["Custom Todo 2 (Slide to Delete)",false],

    ];
  }


  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }


  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}