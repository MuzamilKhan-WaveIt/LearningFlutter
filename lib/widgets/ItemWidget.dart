import 'package:flutter/material.dart';
import 'package:learning/models/items.dart';

class ItemWidget extends StatelessWidget {
  final item item1;
  const ItemWidget({Key? key, required this.item1})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: ListTile(
        leading: Image.network(item1.image),
        title: Text(item1.name),
        subtitle: Text(item1.descr),
        trailing: Text("${item1.price}Rs.",
            style: TextStyle(color: Colors.deepPurple, fontSize: 20)),
      ),
    );
  }
}
