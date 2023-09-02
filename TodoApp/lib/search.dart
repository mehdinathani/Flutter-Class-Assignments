import 'package:flutter/material.dart';

class TaskSearch extends SearchDelegate<String> {
  final List<String> tasks; // Replace with your actual list of task titles

  TaskSearch(this.tasks);

  @override
  String get searchFieldLabel => 'Search Tasks';

  @override
  List<Widget> buildActions(BuildContext context) {
    // Actions for the search bar (e.g., clear button)
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // Leading icon on the left of the search bar
    return IconButton(
      onPressed: () {
        close(context, '');
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // Display search results based on the query
    final results = tasks.where((task) => task.contains(query)).toList();
    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(results[index]),
          onTap: () {
            // Handle the tapped result (e.g., navigate to details)
            close(context, results[index]);
          },
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Suggested search queries while typing
    final suggestions = tasks.where((task) => task.startsWith(query)).toList();
    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(suggestions[index]),
          onTap: () {
            query = suggestions[index];
          },
        );
      },
    );
  }
}
