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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Task Title"),
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0XFFF5F2F9),
                  hintText: "Don'tEnter Text !",
                  focusedBorder: formBorder(),
                  enabledBorder: formBorder(),
                ),
              ),
            ],
          ),
        ),
    );
  }

  OutlineInputBorder formBorder() {
    return OutlineInputBorder(
                  borderSide: BorderSide(
                    color: const Color.fromARGB(255, 243, 33, 33),
                    width: 1,
                    ),
                );

  }
}