import 'package:flutter/material.dart';
import 'ui/actors_list/actors_list_screen.dart';
// import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

void main() {
  runApp(ActorsList());
}

class ActorsList extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ActorsScreen(),
    );
  }
}
