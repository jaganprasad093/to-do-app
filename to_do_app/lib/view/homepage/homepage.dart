import 'package:flutter/material.dart';
import 'package:to_do_app/view/homepage/widgets/task_widgets.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        actions: [Icon(Icons.search)],
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              "Today☀️",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          // Task_widgets(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Bottomsheet();
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void Bottomsheet() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      backgroundColor: Colors.white,
      builder: (context) => StatefulBuilder(
        builder: (context, Builder) => Container(
          child: Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: "Title",
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                DropdownButton(
                  hint: Text("category"),
                  items: [
                    DropdownMenuItem(
                      child: Text("personal"),
                      value: "personal",
                    ),
                    DropdownMenuItem(
                      child: Text("gym"),
                      value: "gym",
                    )
                  ],
                  onChanged: (value) {},
                ),
                SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      child: Container(
                        height: 40,
                        width: 80,
                        child: Center(
                            child: Text(
                          "back",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )),
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        
                        
                      },
                      child: Container(
                        height: 40,
                        width: 80,
                        child: Center(
                            child: Text(
                          "Add",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )),
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
