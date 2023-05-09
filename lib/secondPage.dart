import 'package:flutter/material.dart';

class secondPage extends StatefulWidget {
  const secondPage({super.key, required this.userInput1, required this.userInput2});
  final dynamic userInput1;
  final dynamic userInput2;

  @override
  State<secondPage> createState() => _secondPageState();
}

class _secondPageState extends State<secondPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Text('Email: ${widget.userInput1}'),
              Text('Password: ${widget.userInput2}'),
            ],
          ),
        ),
      )
    );
      
  }
}