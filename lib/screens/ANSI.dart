import 'package:sys_companion/assets/ANSI_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sys_companion/assets/commonUI.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ANSI extends StatefulWidget {
  @override
  _ANSIState createState() => _ANSIState();
}

class _ANSIState extends State<ANSI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[50],
          leading: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: BackButton(color: Colors.blue),
          ),
          elevation: 0.5,
          title: Row(
            children: <Widget>[
              // DBSAppBar(),
              Text(
                ' Tabela ANSI',
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
              MainBody2(),
            ],
          ),
        ));
  }

  Widget MainBody2() {
    return Expanded(
      child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: ansiList.length,
                      itemBuilder: (context, index) =>
                          buildItem2(context, index))
                ],
              ))),
    );
  }

  Widget buildItem2(BuildContext context, int index) {
    return ListTile(
      leading: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Text(
          ansiList[index].number,
          style: TextStyle(fontSize: 22),
        ),
      ),
      title: Padding(
        padding: const EdgeInsets.only(right: 5),
        child: Text(
          ansiList[index].name,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
      subtitle: (ansiList[index].subname != null)
          ? Text(ansiList[index].subname)
          : Container(),
    );
  }

  Widget MainBody() {
    return Expanded(
      child: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: StreamBuilder(
            stream: Firestore.instance.collection('ANSI').snapshots(),
            builder: (context, snapshot) {
              //sera q esse int vai da problema um dia
              int dataLength = snapshot.data.documents.length;
              var docData = snapshot.data.documents;

              if (!snapshot.hasData) return Text('Carregando');
              return Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      //TODO: Header (?)
                      ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemCount: dataLength,
                          itemBuilder: (context, index) =>
                              buildItem(context, docData[index]))
                    ],
                  ));
            }),
      ),
    );
  }

  Widget buildItem(BuildContext context, DocumentSnapshot document) {
    return ListTile(
      leading: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Text(
          document['num'],
          style: TextStyle(fontSize: 22),
        ),
      ),
      title: Padding(
        padding: const EdgeInsets.only(right: 5),
        child: Text(
          document['nome'],
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
      subtitle: Text(document['desc']),
    );
  }
}
