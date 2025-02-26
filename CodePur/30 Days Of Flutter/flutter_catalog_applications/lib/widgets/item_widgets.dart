import 'package:flutter/material.dart';
import 'package:flutter_catalog_applications/models/catalog.dart';

class ItemWidgets extends StatelessWidget {
  final Item item;
  const ItemWidgets({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print("${item.name} pressed");
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price}",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
