import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learning/models/items.dart';
import 'package:learning/pages/detail.dart';
import 'package:learning/widgets/ItemWidget.dart';
import 'package:learning/widgets/MyDrawer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final dummyList = List.generate(30, (index) => CategoryModel.Items[0]);
  // ignore: deprecated_member_use
  @override
  initState() {
    super.initState();
    loadModel();
  }

  loadModel() async {
    await Future.delayed(Duration(seconds: 2));
    //Load Data From Local Json file
    var json = await rootBundle.loadString("assets/files/catalog.json");
    //Decode Json in Map
    var decodedData = jsonDecode(json);
    //Get a List from Decoded Map
    var productData = decodedData["products"];
    //Load Lists through named constructor in class
    CategoryModel.Items = List.from(productData)
        .map<item>((item1) => item.fromMap(item1))
        .toList();

    print(decodedData);
    setState(() {});
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home", style: TextStyle(color: Colors.deepPurple)),
      ),
      body:

          // CategoryModel.Items != null && CategoryModel.Items.isNotEmpty
          //     ? ListView.builder(
          //         // itemCount: dummyList.length,
          //         itemCount: CategoryModel.Items.length,
          //         itemBuilder: (context, index) {
          //           return ItemWidget(item1: CategoryModel.Items[index]);
          //         },
          //       )
          //     : Center(child: CircularProgressIndicator(color: Colors.deepPurple)),
          CategoryModel.Items != null && CategoryModel.Items.isNotEmpty
              ? GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16),
                  // itemCount: dummyList.length,
                  itemCount: CategoryModel.Items.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        print("PRoduct is clicked");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => DetailPage(
                                    item1: CategoryModel.Items[index]))));
                      },
                      child: Card(
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: GridTile(
                          child:
                              Image.network(CategoryModel.Items[index].image),
                          footer: Padding(
                            padding: const EdgeInsets.only(top: 30.0),
                            child: Container(
                                child: Column(
                              children: <Widget>[
                                SizedBox(height: 100),
                                Text(
                                    "${CategoryModel.Items[index].name} | ${CategoryModel.Items[index].price}",
                                    style: TextStyle(fontSize: 15)),
                                Text("${CategoryModel.Items[index].descr}",
                                    style: TextStyle(fontSize: 12)),
                              ],
                            )),
                          ),
                        ),
                      ),
                    );
                  },
                )
              : Center(
                  child: CircularProgressIndicator(color: Colors.deepPurple)),
      drawer: MyDrawer(),
    );
  }
}
