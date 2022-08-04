import 'package:flutter/material.dart';
import 'package:weight_tracker_app/graph_screen.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text("TRACK YOUR WEIGHT")),
      body: GraphScreen(),
      floatingActionButton: FloatingActionButton(
        child: null,
        onPressed: null,
      ),
    );
  }
}
