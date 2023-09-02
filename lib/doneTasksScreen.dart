import 'package:flutter/material.dart';
import 'package:projecttodo/tasksData.dart';

class DoneTasksScreen extends StatefulWidget {
  const DoneTasksScreen({super.key});

  @override
  State<DoneTasksScreen> createState() => _DoneTasksScreenState();
}

class _DoneTasksScreenState extends State<DoneTasksScreen> {
  removeTask({P}) {
    setState(() {
      donetasks.removeAt(P);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Done Tasks"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: donetasks.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(donetasks[index].title),
                  subtitle: Text(
                    donetasks[index].description,
                  ),
                  trailing: IconButton(
                      onPressed: () {
                        removeTask(P: index);
                      },
                      icon: const Icon(Icons.delete)),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
