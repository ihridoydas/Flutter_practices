import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iReport_Flutter/models/catalog.dart';
import 'package:iReport_Flutter/widgets/drawer.dart';
import 'dart:convert';

import '../widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodeedData = jsonDecode(catalogJson);
    var productData = decodeedData["products"];
    CatalogModel.items = List.from(productData)
            .map<Item>((item) => Item.fromMap(item))
            .toList();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        // child: ListView.builder(itemCount: CatalogModel.items.length,
        child: ListView.builder(
          itemCount: CatalogModel.items.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: CatalogModel.items[index],
            );
            // return ItemWidget(item: CatalogModel.items[index],);
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
