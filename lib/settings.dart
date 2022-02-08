import 'package:experiment4/my_drawer.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: Text("settings"),
      ),
    );
  }
}
