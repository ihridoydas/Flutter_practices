import 'package:flutter/material.dart';
import 'package:iReport_Flutter/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Container(
          child: Text("His is Demo app"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
