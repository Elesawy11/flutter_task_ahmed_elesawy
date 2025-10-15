import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp( const FlutterTask());
}
class FlutterTask extends StatelessWidget {
  const FlutterTask({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World'),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}