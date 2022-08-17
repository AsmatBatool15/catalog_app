import 'package:catalog_app/pages/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String = "ASMAT BATOOL";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days of lutter by $String"),
        ),
      ),
      drawer: MyDrawer(),
    );
    
  }
}