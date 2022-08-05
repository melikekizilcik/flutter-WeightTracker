import 'package:get/state_manager.dart';
import 'package:weight_tracker_app/models/record.dart';

class Controller extends GetxController {
  //stream:
  var records = <Record>[
    /*Record(weight: 80, dateTime: DateTime.now(), note: "AAA"),
    Record(weight: 81, dateTime: DateTime.now(), note: "BBB"),
    Record(weight: 82, dateTime: DateTime.now(), note: "CCC"),
    Record(weight: 83, dateTime: DateTime.now(), note: "DDD"),*/
  ].obs;

  void addRecord() {
    records.add(Record(weight: 80, dateTime: DateTime.now(), note: "XXX"));
  }

  void deleteRecord(Record record) {
    records.remove(record);
  }
}
