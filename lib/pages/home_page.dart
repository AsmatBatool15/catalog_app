import 'package:catalog_app/models/catalog.dart';
import 'package:catalog_app/pages/widgets/drawer.dart';
import 'package:catalog_app/pages/widgets/items_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String = "ASMAT BATOOL";
  
  @override
  void initState() {
    super.initState();
    loadData();
  }
  loadData() async {
     final catalogJason = await rootBundle.loadString("pages/files/catalog.jason");
     final decodedData = jsonDecode(catalogJason);
     var productsData = decodedData("products");
     print(productsData);
  }

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, ((index) => CatalogModel.item[0]));
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App",
        style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
    
  }
}