void main() {
  List<Map<String, dynamic>> todoList = [];
  addTask(todoList, description: "Travel to Alex", dueDate: "2024-11-12");
  addTask(todoList, description: "Do homework", dueDate: "2024-11-14");
  addTask(todoList,
      description: "fast", dueDate: "2024-11-15", isCompleted: true);
  addTask(todoList, description: "Go to the gym", dueDate: "2024-11-16");

  print("\nTo-Do List:");
  displayTasks(todoList);

  updateTaskCompletion(todoList, 1, isCompleted: true);

  print("\nUpdated To-Do List:\n");
  displayTasks(todoList);

  removeTask(todoList, 0);

  print("\nUpdated To-Do List:\n");
  displayTasks(todoList);
}

void addTask(
  List<Map<String, dynamic>> tasksList, {
  required String description,
  required String dueDate,
  bool isCompleted = false,
}) {
  tasksList.add({
    'description': description,
    'dueDate': dueDate,
    'isCompleted': isCompleted,
  });
  print("Task added: $description");
}

void removeTask(List<Map<String, dynamic>> tasksList, int index) {
  if (index >= 0 && index < tasksList.length) {
    print("Task removed: ${tasksList[index]['description']}");
    tasksList.removeAt(index);
  } else {
    print("Invalid index. No task removed.");
  }
}

void updateTaskCompletion(List<Map<String, dynamic>> tasksList, int index,
    {bool? isCompleted}) {
  if (index >= 0 && index < tasksList.length) {
    tasksList[index]['isCompleted'] = isCompleted ?? false;
    print("Task updated: ${tasksList[index]['description']}");
  } else {
    print("Invalid index. No task updated.");
  }
}

void displayTasks(List<Map<String, dynamic>> tasksList) {
  if (tasksList.isEmpty) {
    print("The to-do list is empty.");
  } else {
    tasksList.asMap().forEach((index, task) {
      print("${index + 1}. ${task['description']}");
      print("   Due Date: ${task['dueDate']}");
      print("   Status: ${task['isCompleted'] ? 'Completed' : 'Uncompleted'}");
    });
  }
}
