import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';

class Task_tile extends StatelessWidget {
  String taskname;
  bool completed;
  void Function(bool?)? onChanged;
  void Function(BuildContext)? onPressed;

  Task_tile(
      {super.key,
      required this.completed,
      required this.onChanged,
      required this.taskname,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(motion: StretchMotion(), children: [
        SlidableAction(
          backgroundColor:  Colors.green,
          onPressed:  onPressed,
          icon: Icons.delete,
          label: "Delete",
        ),
      ]),
      child: Container(
        child: Row(
          children: [
            Checkbox(value: completed, onChanged: onChanged),
            Text(taskname,
                style: GoogleFonts.poppins(
                    decoration: completed
                        ? TextDecoration.lineThrough
                        : TextDecoration.none,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black))
          ],
        ),
      ),
    );
  }
}
