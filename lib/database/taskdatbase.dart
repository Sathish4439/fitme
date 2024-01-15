
import 'package:hive/hive.dart';

class taskDataBox {
  final _myBox = Hive.box("mybox");
 

  List tasklist = [];


 

  void initialDb() {
    tasklist = [
      ["Put Your daily task", false],
    ];
  }

  void load_data() {
    tasklist = _myBox.get("List");
    update();
  }

  void update() {
    _myBox.put("List", tasklist);
  }
}
