import 'package:flutter/material.dart';

import '../models/items.dart';

class DetailPage extends StatelessWidget {
  final item item1;
  const DetailPage({Key? key, required this.item1})
      : assert(item1 != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.network(item1.image),
    );
  }
}
