import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NewItem extends StatelessWidget {
  const NewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
        foregroundColor: Colors.amber,
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          
          // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              formTitle("Task Title"),
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0XFFF5F2F9),
                  hintText: "Task Item",
                  focusedBorder: formBorder(true),
                  enabledBorder: formBorder(false),
                ),
              ),
              SizedBox(height: 8),
              formTitle("Category Name"),
              Row(
                children: [
                  Chip(label: Text("Eucation", style: TextStyle(color: Colors.white)), backgroundColor: Colors.purple),
                  SizedBox(
                    width: 10,
                  ),
                  Chip(label: Text("Shop", style: TextStyle(color: Colors.white)), backgroundColor: Colors.purple,),
                ],
              ),
              formTitle("Note"),
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0XFFF5F2F9),
                  hintText: "Task Item",
                  focusedBorder: formBorder(true),
                  enabledBorder: formBorder(false),
                ),
              ),
            ],
          ),
        ),
    );
  }

  Padding formTitle(String title) {
    return Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(title),
            );
  }

  OutlineInputBorder formBorder(bool isForFocus) {
    if(isForFocus){
    return OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 1.5,
                    ),
                );
    }
    return OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 1,
                    ),
                );
  }
}