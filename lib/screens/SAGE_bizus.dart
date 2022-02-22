import 'package:sys_companion/screens/SAGE_entities.dart';
import 'package:sys_companion/assets/SAGE_model.dart';
import 'package:sys_companion/assets/commonUI.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sys_companion/screens/SAGE_subsystems.dart';

Widget appbarBizus(String nome) {
  return AppBar(
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
          nome,
          style: TextStyle(
              fontFamily: 'SanFrancisco', fontSize: 25, color: Colors.black),
        ),
      ],
    ),
  );
}

Widget tabDesc(String desc) {
  return Container(
      child: Padding(
    padding: const EdgeInsets.fromLTRB(15, 15, 15, 5),
    child: Center(
      child: Text(
        desc,
        style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
        textAlign: TextAlign.center,
      ),
    ),
  ));
}

//Pagina dos Comandos
class SAGE_Commands extends StatefulWidget {
  @override
  _SAGE_CommandsState createState() => _SAGE_CommandsState();
}

class _SAGE_CommandsState extends State<SAGE_Commands> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: appbarBizus(" Comandos"), body: commandsBody());
  }
}

Widget commandsBody() {
  return SingleChildScrollView(
      child: Container(
    child: Column(
      children: [
        tabDesc('Aqui temos os comandos basicos do SAGE, que serão inseridos no terminal do Linux.' +
            '\nEstes comandos foram testados para o CentOS 7.0 e devem ser escritos exatamente como colocado (case sensitve).'),
        Divider(color: Colors.black),
        ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: commands.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [commandName(index), commandDescription(index)],
                ),
              );
            })
      ],
    ),
  ));
}

Widget commandName(int index) {
  nameStyle() {
    return TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
    );
  }

  return Padding(
    padding: const EdgeInsets.only(left: 5),
    child: Text(
      commands[index].command,
      style: nameStyle(),
    ),
  );
}

Widget commandDescription(int index) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(15, 5, 0, 0),
    child: Text("● " + commands[index].commandDesc),
  );
}

//Pagina dos Tutoriais
class SAGE_Tutorials extends StatefulWidget {
  @override
  _SAGE_TutorialsState createState() => _SAGE_TutorialsState();
}

class _SAGE_TutorialsState extends State<SAGE_Tutorials> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: appbarBizus(" Tutoriais"), body: tutorialBody());
  }
}

Widget tutorialBody() {
  return SingleChildScrollView(
      child: Container(
          child: Column(
    children: [
      ListView.builder(
        shrinkWrap: true,
        itemCount: tutorials.length,
        itemBuilder: (BuildContext context, int index) => Container(
          height: 100,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              color: Colors.grey[50],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 2,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => TutorialsPage(index.toInt())));
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    //INSIDE CARD parameters
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        tutorialsCardTitle(index),
                        tutorialsCardDesc(index)
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      )
    ],
  )));
}

Widget tutorialsCardTitle(int index) {
  return Text(
    tutorials[index].tutorialTitle,
    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
  );
}

Widget tutorialsCardDesc(int index) {
  return Padding(
    padding: const EdgeInsets.only(left: 10),
    child: Text(
      tutorials[index].tutorialDesc,
      style: TextStyle(fontSize: 14, color: Colors.grey[700]),
    ),
  );
}

class TutorialsPage extends StatelessWidget {
  final int index;
  TutorialsPage(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarBizus(" Tutoriais"),
      body: tutorialPage(index),
    );
  }
}

Widget tutorialPage(int index) {
  return SingleChildScrollView(
    child: Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          tutorialsTitle(index),
          tutorialsText(index),
          tutorials[index].assets.isEmpty ? Container() : tutorialsAssets(index)
        ],
      ),
    ),
  );
}

Widget tutorialsTitle(int index) {
  return Center(
    child: Text(
      tutorials[index].tutorialTitle,
      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
    ),
  );
}

Widget tutorialsText(int index) {
  return Padding(
    padding: const EdgeInsets.all(15),
    child: Text(
      tutorials[index].tutorialText,
      style: TextStyle(fontSize: 14),
    ),
  );
}

Widget tutorialsAssets(int index) {
  return Container(
      child: Column(
    children: [
      for (var assets in tutorials[index].assets) Image.asset('assets/$assets'),
    ],
  ));
}
