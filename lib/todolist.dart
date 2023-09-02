import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:projecttodo/functions.dart';
import 'package:projecttodo/search.dart';
import 'package:projecttodo/tasksData.dart';

class TodoListView extends StatefulWidget {
  const TodoListView({super.key});

  @override
  State<TodoListView> createState() => _TodoListViewState();
}

class _TodoListViewState extends State<TodoListView> {
  void startSearch(BuildContext context) async {
    final selectedTask = await showSearch<String>(
      context: context,
      delegate: TaskSearch(tasks
          .map((task) => task.title)
          .toList()), // Pass your list of task titles here
    );

    // Handle the selected task (e.g., navigate to details)
    if (selectedTask != null) {
      print('Selected Task: $selectedTask');
    }
  }

  TextEditingController textEditingController = TextEditingController();
  TextEditingController updateTaskController = TextEditingController();
  TextEditingController updateTitleControllor = TextEditingController();
  TextEditingController updateDiscriptionControllor = TextEditingController();
  TextEditingController dueDateControllor = TextEditingController();

  DateTime selectedDueDate = DateTime.now();

  Future<void> _selectDueDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDueDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(2101), // Adjust the range according to your needs.
    );

    if (picked != null && picked != selectedDueDate) {
      setState(() {
        selectedDueDate = picked;
        dueDateControllor.text = DateFormat('yyyy-MM-dd').format(picked);
      });
    }
  }

  removeTask({P}) {
    setState(() {
      tasks.removeAt(P);
    });
  }

  showSheetForAdd() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      isDismissible: true,
      builder: (context) => Container(
        color: Colors.white,
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "Add a New Task Here.",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text("Title:"),
              TextField(
                controller: updateTitleControllor,
                decoration: const InputDecoration(border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text("Description:"),
              TextField(
                decoration: const InputDecoration(border: OutlineInputBorder()),
                controller: updateDiscriptionControllor,
                maxLines: 3,
              ),
              const SizedBox(
                height: 16,
              ),
              const Text("Due on:"),
              TextField(
                onTap: () => _selectDueDate(context),
                controller: dueDateControllor,
                // enabled: false,
                decoration: const InputDecoration(
                  hintText: "Select a Due Date.",
                  prefixIcon: Icon(Icons.calendar_today),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  addTask();
                  updateTitleControllor.clear();
                  dueDateControllor.clear();
                  updateDiscriptionControllor.clear();
                },
                child: const Text("Add Task"),
              ),
            ]),
      ),
    );
  }

  showSheetForUpdate({required int P}) {
    updateTitleControllor.text = tasks[P].title;
    updateDiscriptionControllor.text = tasks[P].description;
    dueDateControllor.text = tasks[P].duedate;
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      isDismissible: true,
      builder: (context) => Container(
        color: Colors.white, // Changed background color

        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "Update Task",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            const Text("Title:"),
            TextField(
              controller: updateTitleControllor,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            const Text("Description:"),
            TextField(
              controller: updateDiscriptionControllor,
              maxLines: 3, // Allow multiple lines for description
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            const Text("Due on:"),
            TextField(
              onTap: () => _selectDueDate(context),
              controller: dueDateControllor,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Select a Due Date",
                prefixIcon: Icon(Icons.calendar_today),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.pop(context);

                  tasks[P].title = updateTitleControllor.text;
                  tasks[P].description = updateDiscriptionControllor.text;
                  tasks[P].duedate = dueDateControllor.text;
                  updateTitleControllor.clear();
                  dueDateControllor.clear();
                  updateDiscriptionControllor.clear();
                });
              },
              child: const Text("Update Task"),
            ),
          ],
        ),
      ),
    );
  }

  updateTask({P}) {
    // updateTaskController.text = toDoList[P];
  }

  addTask() {
    setState(() {
      tasks.add(
        Task(
            title: updateTitleControllor.text,
            description: updateDiscriptionControllor.text,
            duedate: dueDateControllor.text),
      );
    });
  }

  //done tasks
  doneTaskFun({P}) {
    updateTitleControllor.text = tasks[P].title;
    updateDiscriptionControllor.text = tasks[P].description;
    dueDateControllor.text = tasks[P].duedate;
    setState(() {
      donetasks.add(
        DoneTask(
            title: updateTitleControllor.text,
            description: updateDiscriptionControllor.text,
            duedate: dueDateControllor.text),
      );
      tasks.removeAt(P);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task Manager"),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              startSearch(context);
            },
          ),
        ],
      ),
      // resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: tasks.length,
                  itemBuilder: (context, index) {
                    return Container(
                        padding: const EdgeInsets.all(6),
                        margin: const EdgeInsets.only(bottom: 2),
                        child: ListTile(
                          tileColor: Colors.yellowAccent,
                          title: Text(
                            tasks[index].title,
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            tasks[index].description,
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400),
                          ),
                          isThreeLine: true,
                          trailing: Column(children: [
                            Wrap(
                              children: [
                                Text(tasks[index].duedate),
                                Text(getAgeing(tasks[index].duedate)),
                                IconButton(
                                    onPressed: () {
                                      doneTaskFun(P: index);
                                    },
                                    icon: const Icon(Icons.done_all_outlined)),
                                IconButton(
                                    onPressed: () {
                                      showSheetForUpdate(P: index);
                                    },
                                    icon: const Icon(Icons.update)),
                                IconButton(
                                    onPressed: () {
                                      removeTask(P: index);
                                    },
                                    icon: const Icon(Icons.delete)),
                              ],
                            ),
                          ]),
                        ));
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                onPressed: () {
                  showSheetForAdd();
                },
                child: const Icon(Icons.add),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
