import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class Student {
  String? name;
  String? stack;

  Student({this.name, this.stack});

  Map<String, dynamic> toJson() => {'name': name, 'stack': stack};

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(name: json['name'], stack: json['stack']);
  }
}

class HomeController extends GetxController {
  var students = <Student>[].obs;
  var itemcount = 0.obs;

  TextEditingController namecon = TextEditingController();
  TextEditingController stackcon = TextEditingController();

  void addStudent(String name, String stack) {
    students.add(Student(name: name, stack: stack));
    itemcount.value = students.length;
    saveStudentsToStorage();
  }

  void deleteStudent(int index) {
    students.removeAt(index);
    itemcount.value = students.length;
    saveStudentsToStorage();
  }

  void sortStudentsAscending() {
    students.sort((a, b) => a.name!.compareTo(b.name!));
    students.refresh();
  }

  Future<void> saveStudentsToStorage() async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> studentList =
        students.map((student) => jsonEncode(student.toJson())).toList();
    prefs.setStringList('students', studentList);
  }

  Future<void> loadStudentsFromStorage() async {
    final prefs = await SharedPreferences.getInstance();
    final List<String>? studentList = prefs.getStringList('students');

    if (studentList != null) {
      students.value = studentList
          .map((studentJson) => Student.fromJson(jsonDecode(studentJson)))
          .toList();
      itemcount.value = students.length;
    }
  }

  @override
  void onInit() {
    super.onInit();
    loadStudentsFromStorage();
  }
}
