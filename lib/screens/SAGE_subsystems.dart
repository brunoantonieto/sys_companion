import 'package:sys_companion/screens/SAGE_entities.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sys_companion/assets/SAGE_model.dart';
import 'package:sys_companion/assets/commonUI.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SAGE_Entities extends StatefulWidget {
  @override
  _SAGE_EntitiesState createState() => _SAGE_EntitiesState();
}

class _SAGE_EntitiesState extends State<SAGE_Entities> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[50],
          leading: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: BackButton(color: Colors.blue),
          ),
          elevation: 0,
          title: Row(
            children: <Widget>[
              // DBSAppBar(),
              Text(
                ' Subsistemas SAGE',
                style: TextStyle(
                    fontFamily: 'SanFrancisco',
                    fontSize: 25,
                    color: Colors.black
                    //color: Colors.white
                    ),
              ),
            ],
          ),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              SubsystemsBody(),
            ],
          ),
        ));
  }

  Widget SubsystemsBody() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(2, 5, 2, 0),
        child: StaggeredGridView.countBuilder(
          crossAxisCount: 2,
          itemCount: subsystems.length,
          itemBuilder: (BuildContext context, int index) => Card(
            elevation: 2,
            color: subsystems[index].cardColor,
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => EntitiesPage(index.toInt())));
              },
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                    //INSIDE CARD parameters
                    child: Column(
                  children: [
                    Padding(
                      //para o titulo do subsistema
                      padding: const EdgeInsets.only(top: 5),
                      child: subsystemCardTitle(index),
                    ),
                    subsystemCardEntities(index)
                  ],
                )),
              ),
            ),
          ),
          staggeredTileBuilder: (int index) => StaggeredTile.fit(1),
          mainAxisSpacing: 5.0,
          crossAxisSpacing: 5.0,
        ),
      ),
    );
  }

  Widget subsystemCardEntities(int index) {
    return GridView.count(
      scrollDirection: Axis.vertical,
      childAspectRatio: 3 / 2,
      shrinkWrap: true,
      crossAxisCount: 3,
      crossAxisSpacing: 0.5,
      mainAxisSpacing: 0,
      children: [
        for (var name in subsystems[index].entity) Center(child: Text(name))
      ],
    );
  }

  Widget subsystemCardTitle(int index) {
    return Text(
      subsystems[index].subsystemName,
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    );
  }
}
