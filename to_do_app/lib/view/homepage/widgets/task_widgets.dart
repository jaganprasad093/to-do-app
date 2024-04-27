import 'package:flutter/material.dart';

class Task_widgets extends StatefulWidget {
  Task_widgets({super.key});
  bool isChecked = false;

  @override
  State<Task_widgets> createState() => _Task_widgetsState();
}

class _Task_widgetsState extends State<Task_widgets> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Checkbox(
          value: widget.isChecked,
          // checkColor: Colors.black,
          // activeColor: Colors.black,
          onChanged: (value) {
            setState(() {
              widget.isChecked = value!;
              print("helloooo");
            });
          },
        ),
        Text("data"),
        SizedBox(
          width: 30,
        ),
        Container(
          height: 30,
          width: 100,
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(10)),
          child: Center(
              child: Text(
            "Complete",
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
          )),
        ),
        Icon(Icons.delete)
      ],
    );
  }
}
