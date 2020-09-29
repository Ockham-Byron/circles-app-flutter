import 'package:flutter/material.dart';

import 'package:circles_app/data/lent_objects_data.dart';
import 'package:circles_app/widgets/object_item.dart';
import 'package:circles_app/widgets/circular_fab.dart';

class MonPlacard extends StatelessWidget {
  List get getListOfLentObjects {
    return listOfLentObjects;
  }

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
                children: getListOfLentObjects
                    .map((objData) => ObjectItem(
                          objData.name,
                          objData.owner,
                        ))
                    .toList(),
              ),
            ),
            Text("Mes emprunts"),
          ],
        ),
      ),
      floatingActionButton: CircularFab(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
