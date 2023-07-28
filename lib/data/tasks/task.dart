enum TaskStatus {
  todo,
  inprogress,
  done,
}

class Task {
  final String title;
  final String description;
  final String category;
  final TaskStatus status;
  final DateTime dueDate;
  final DateTime startTime;
  final DateTime endTime;
  final double progress;

  Task({
    required this.title,
    required this.description,
    required this.category,
    required this.status,
    required this.dueDate,
    required this.startTime,
    required this.endTime,
    required this.progress,
  });
}

List<Task> tasks = [
  Task(
    title: 'Design Meeting',
    description: 'Meeting with the clients to discuss the requirements',
    category: 'Project X',
    status: TaskStatus.todo,
    dueDate: DateTime(2023, 7, 31),
    startTime: DateTime(2023, 7, 31, 9, 30),
    endTime: DateTime(2023, 7, 31, 10, 30),
    progress: 0
  ),
  Task(
    title: 'Create a dashboard screen',
    description: 'Create a dashboard screen containing different list of tasks, clean margins and padding, and icon colors',
    category: 'Task App',
    status: TaskStatus.todo,
    dueDate: DateTime(2023, 7, 30),
    startTime: DateTime(2023, 7, 30, 9, 30),
    endTime: DateTime(2023, 7, 30, 16, 30),
    progress: 0
  ),
  Task(
    title: 'CRUD service',
    description: 'Create a CRUD service for task app',
    category: 'Task App',
    status: TaskStatus.todo,
    dueDate: DateTime(2023, 7, 30),
    startTime: DateTime(2023, 7, 30, 18, 00),
    endTime: DateTime(2023, 7, 30, 20, 30),
    progress: 0
  ),
  Task(
    title: 'Update UI design',
    description: 'Update overall UI design',
    category: 'Task App',
    status: TaskStatus.inprogress,
    dueDate: DateTime(2023, 7, 29),
    startTime: DateTime(2023, 7, 29, 9, 30),
    endTime: DateTime(2023, 7, 29, 16, 30),
    progress: 58.0
  ),
  Task(
    title: 'Create reels content',
    description: 'Start creating content on instagram',
    category: 'Instagram',
    status: TaskStatus.inprogress,
    dueDate: DateTime(2023, 7, 29),
    startTime: DateTime(2023, 7, 29, 18, 30),
    endTime: DateTime(2023, 7, 29, 19, 30),
    progress: 15.0
  ),
];