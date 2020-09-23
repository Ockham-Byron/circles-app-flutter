import 'package:flutter/material.dart';

import 'package:circles_app/data/objects_data.dart';
import 'package:circles_app/widgets/object_item.dart';

class MonPlacard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mon Placard"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Text("Mes prêts"),
            Expanded(
              child: GridView(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                children: listofObjects
                    .map((objData) => ObjectItem(
                          objData.name,
                          objData.owner,
                        ))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
