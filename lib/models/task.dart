class Task {
  final String name;
  bool isDone;

  //constructor
  Task({this.name, this.isDone = false});

  void toggleDone() {
    isDone = !isDone;
  }
}
