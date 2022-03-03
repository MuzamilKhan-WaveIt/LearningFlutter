import 'package:flutter/material.dart';
import 'package:learning/models/items.dart';
import 'package:learning/widgets/ItemWidget.dart';
import 'package:learning/widgets/MyDrawer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final dummyList = List.generate(30, (index) => CategoryModel.Items[0]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home", style: TextStyle(color: Colors.deepPurple)),
        ),
        body: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(item1: dummyList[index]);
          },
        ),
        drawer: MyDrawer());
  }
}
