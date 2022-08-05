import 'package:flutter/material.dart';
import 'package:weight_tracker_app/widgets/record_list_tile.dart';

class HistoryScreen extends StatefulWidget {
  HistoryScreen({Key? key}) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(centerTitle: true, title: Text("History")),
        body: ListView(
          physics: BouncingScrollPhysics(),
          children: const [
          RecordListTile(),
          RecordListTile(),
          RecordListTile(),
          RecordListTile(),
        ]));
  }
}
