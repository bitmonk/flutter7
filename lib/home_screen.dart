import 'dart:developer';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  
  List<Map<String, dynamic>> completedTask = [
    {
      "category_name" : "school",
      "description" : "This is the description of completed tasks",
      "title" : "This is the title",
    },
  ];

  List<Map<String, dynamic>> incompleteTask = [
    {
      "category_name" : "school",
      "description" : "This is the description of incomplete task",
      "title" : "This is the title",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 15, 144, 177),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
             TextTitle("Incomplete"),
             Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0XFFe9defe),

              ),
              child: Column(
                children:[
                  Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0XFFe9defe),

              ),
              child: Column(
                children:[
                  for(var data in incompleteTask)
                  TodoListItem("school"),
                  Divider(),
                  TodoListItem("market"),
                  // Text("data"),
                ]
              )
             ),
             TextTitle("Complete"),
            TodoListItem("school"),
            TodoListItem("market"),
                ]
              )
             ),

          ],
        ),
      ),
    );
  }
}

class TodoListItem extends StatelessWidget {
  final Map<String, dynamic> task;
  TodoListItem(this.task);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        padding: EdgeInsets.all(3),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(360),
          color: task == "school" ?Colors.green.withOpacity(0.5) : Colors.orange.withOpacity(0.5) ,
          border: Border.all(color: Colors.green)
        ),
        child: Icon(
          task == "school" ? Icons.school : Icons.shopping_cart,
          color: task == "school" ? Colors.green : Colors.orange,
        ),
      ),
      trailing:  PopupMenuButton<String>(
        onSelected: (value) {
          if (value == 'view') {
            log("view");
          } else if (value == 'delete') {
            log("deleted");
          } else if (value == 'mark_as_completed') {
            log("marked as completed");
          }
        },
        itemBuilder: (BuildContext context) => [
          const PopupMenuItem<String>(
            value: 'view',
            child: Text('View'),
          ),
          const PopupMenuItem<String>(
            value: 'delete',
            child: Text('Delete'),
          ),
          const PopupMenuItem<String>(
            value: 'mark_as_completed',
            child: Text('Mark as Completed'),
          ),
        ],
      ),
      title: Text("Title"),
      subtitle: Text("This is a subtitle. This is the description of the item. This is a subtitle. This is the description of the item. This is a subtitle. This is the description of the item. This is a subtitle. This is the description of the item. ", 
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

class TextTitle extends StatelessWidget {
  final String title;
  TextTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.only(
            bottom: 8,
          ),
          child: Text(title),
        );
  }
}