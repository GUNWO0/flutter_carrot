import 'package:flutter/material.dart';

class MyCarrotScreen extends StatelessWidget {
  const MyCarrotScreen();
  @override
  Widget build(BuildContext context) {
    print("MyCarrotScreen build");
    return Scaffold(
      body: Center(child: Text("MyCarrotScreen")),
    );
  }
}
