import 'package:flutter/material.dart';

void main (){
  runApp(NotesApp());
}


class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Notes App'),
        ),
        body: Center(
          child: Text('Welcome to the Notes App!'),
        ),
      ),
    );
  }
}