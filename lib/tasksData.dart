class Task {
  // Properties
  String title;
  String description;
  String duedate;

  // Constructor
  Task({
    required this.title,
    required this.description,
    required this.duedate,
  });
}

List<Task> tasks = [
  Task(
      title: 'My Task',
      description: 'This is my task description.',
      duedate: '2023-08-30'),
  Task(
      title: 'Another Task',
      description: 'This is another task description.',
      duedate: '2023-09-01'),
  Task(
      title: 'My Task',
      description: 'This is my task description.',
      duedate: '2023-08-30'),
  Task(
      title: 'Another Task',
      description: 'This is another task description.',
      duedate: '2023-09-01'),
  Task(
      title: 'My Task',
      description: 'This is my task description.',
      duedate: '2023-08-30'),
  Task(
      title: 'Another Task',
      description: 'This is another task description.',
      duedate: '2023-09-01'),
  Task(
      title: 'My Task',
      description: 'This is my task description.',
      duedate: '2023-08-30'),
  Task(
      title: 'Another Task',
      description: 'This is another task description.',
      duedate: '2023-09-01'),
  Task(
      title: 'My Task',
      description: 'This is my task description.',
      duedate: '2023-08-30'),
  Task(
      title: 'Another Task',
      description: 'This is another task description.',
      duedate: '2023-09-01'),
  Task(
      title: 'My Task',
      description: 'This is my task description.',
      duedate: '2023-08-30'),
  Task(
      title: 'Another Task',
      description: 'This is another task description.',
      duedate: '2023-09-01'),
  Task(
      title: 'My Task',
      description: 'This is my task description.',
      duedate: '2023-08-30'),
  Task(
      title: 'Another Task',
      description: 'This is another task description.',
      duedate: '2023-09-01'),
  Task(
      title: 'My Task',
      description: 'This is my task description.',
      duedate: '2023-08-30'),
  Task(
      title: 'Another Task',
      description: 'This is another task description.',
      duedate: '2023-09-01'),
];

//done tasks
class DoneTask {
  // Properties
  String title;
  String description;
  String duedate;

  // Constructor
  DoneTask({
    required this.title,
    required this.description,
    required this.duedate,
  });
}

List<DoneTask> donetasks = [
  DoneTask(
      title: 'My first done Task',
      description: 'This is my task description.',
      duedate: '2023-08-30'),
  DoneTask(
      title: 'Another done Task',
      description: 'This is another task description.',
      duedate: '2023-09-01'),
];
