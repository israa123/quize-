import 'package:flutter/material.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Next Screen")),
      body: const Center(
        child: Text(
          "this is next Screen",
          style: TextStyle(color: Colors.red, fontSize: 30),
        ),
      ),
    );
  }
}
