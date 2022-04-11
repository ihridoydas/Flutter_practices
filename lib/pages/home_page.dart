import 'package:flutter/material.dart';
import 'package:iReport_Flutter/models/catalog.dart';
import 'package:iReport_Flutter/widgets/drawer.dart';

import '../widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        // child: ListView.builder(itemCount: CatalogModel.items.length,
        child: ListView.builder(itemCount: dummyList.length,
        itemBuilder: (context,index){

          return ItemWidget(item: dummyList[index],);
          // return ItemWidget(item: CatalogModel.items[index],);
        },),
      ),
      drawer: MyDrawer(),
    );
  }
}
