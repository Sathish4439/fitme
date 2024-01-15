import 'package:fitme/components/task_tile.dart';
import 'package:fitme/database/taskdatbase.dart';
import 'package:fitme/image/mybutton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';

class Personal_task extends StatefulWidget {
  Personal_task({super.key});

  @override
  State<Personal_task> createState() => _Personal_taskState();
}

class _Personal_taskState extends State<Personal_task> {
  final _mybox = Hive.box("mybox");

  @override
  void initState() {
    // TODO: implement initState

    if (_mybox.get("List") == null) {
      db.initialDb();
    } else {
      db.load_data();
    }
    super.initState();
  }

  TextEditingController text = TextEditingController();

  List Task = [];

  taskDataBox db = taskDataBox();

  void changestate(int index, bool? value) {
    setState(() {
      db.tasklist[index][1] = !db.tasklist[index][1];
      db.update();
    });
  }

  void delete_task(int index) {
    setState(() {
      db.tasklist.removeAt(index);
    });
    db.update();
  }

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }

  void newtask() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Container(
              height: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextField(
                    controller: text,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: "Add New Task"),
                  ),
                  Row(
                    children: [
                      mybutton(
                          content: "save",
                          onTap: () {
                            setState(() {
                              db.tasklist.add([text.text, false]);
                              Navigator.pop(context);
                              text.text = "";
                            });
                          },
                          color: Colors.black,
                          height: 50,
                          weight: 80),
                      SizedBox(
                        width: 50,
                      ),
                      mybutton(
                          content: "cancl",
                          onTap: () {
                            text.text = "";
                            Navigator.pop(context);
                          },
                          color: Colors.black,
                          height: 50,
                          weight: 80)
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios_new)),
          title: Text(
            "Personal Task",
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      body: Expanded(
        child: ListView.builder(
            itemCount: db.tasklist.length,
            itemBuilder: (context, index) {
              return Task_tile(
                  onPressed: (context) => delete_task(index),
                  completed: db.tasklist[index][1],
                  onChanged: (value) {
                    setState(() {
                      changestate(index, value);
                    });
                  },
                  taskname: db.tasklist[index][0]);
            }),
      ),
      floatingActionButton:
          FloatingActionButton(child: Icon(Icons.add), onPressed: newtask),
    );
  }
}
