import 'package:flutter/material.dart';

class ObjectItem extends StatelessWidget {
  String name;
  String owner;

  ObjectItem(this.name, this.owner);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(name),
          Text(owner),
        ],
      ),
    );
  }
}
