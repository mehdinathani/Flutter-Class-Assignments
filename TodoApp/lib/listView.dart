import 'package:flutter/material.dart';

class taskView extends StatefulWidget {
  const taskView({super.key});

  @override
  State<taskView> createState() => _taskViewState();
}

class _taskViewState extends State<taskView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SafeArea(
          child: Column(
        children: [
          // ListView.builder(itemBuilder: itemBuilder)
        ],
      )),
    );
  }
}
