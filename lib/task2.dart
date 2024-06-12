import 'package:first_iti_task/task1.dart';
import 'package:flutter/foundation.dart';

class Novel extends Book {
  String genre;
  Novel(super.title, super.author, super.numPages, this.genre);
  @override
  displayInfo() {
    super.displayInfo();
    if (kDebugMode) {
      print("Genre of the Novel : $genre");
    }
  }
}
