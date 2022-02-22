import 'package:sys_companion/assets/SAGE_model.dart';
import 'package:sys_companion/assets/commonUI.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EntitiesPage extends StatelessWidget {
  final int index;
  EntitiesPage(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.red,
        backgroundColor: Colors.grey[50],
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: BackButton(color: Colors.blue),
        ),
        elevation: 0,
        title: Row(
          children: <Widget>[
            // (subsystems[index].subsystemName != 'Rede de Difusão Confiável')
            //     ? DBSAppBar()
            //     : Container(),
            Text(
              subsystems[index].subsystemName,
              style: TextStyle(
                  fontFamily: 'SanFrancisco', fontSize: 25, color: Colors.black
                  //color: Colors.white
                  ),
            ),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[Expanded(child: subsystemData())],
      ),
    );
  }

  Widget subsystemDesc() {
    return Container(
        child: Padding(
      padding: const EdgeInsets.fromLTRB(15, 15, 15, 5),
      child: Center(
        child: Text(
          subsystems[index].subsystemDesc,
          style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
          textAlign: TextAlign.center,
        ),
      ),
    ));
  }

  Widget subsystemData() {
    nameStyle() {
      return TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.bold,
      );
    }

    nameStyle2() {
      return TextStyle(color: Colors.grey[700], fontSize: 22);
    }

    descStyle() {
      return TextStyle(fontStyle: FontStyle.italic, fontSize: 16);
    }

    return SingleChildScrollView(
      child: Container(
          child: Column(
        children: [
          subsystemDesc(),
          Divider(color: Colors.black),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: subsystems[index].entity.length,
            itemBuilder: (BuildContext context, int index2) {
              //isso aqui é pra iterar sobre todos os itens e pa
              int paramLength = subsystems[index].params[index2].length;
              List indexNum = []; //index number list of param
              int cont = 0;
              for (int k = 0; k < paramLength; k++) {
                indexNum.add(cont);
                cont++;
              }

              return Padding(
                padding: const EdgeInsets.all(12.0),

                //- Column [Entities]
                //- - Row [name - full name]
                //- - Column [entitie desc
                //            parameter - desc]

                //ENTIDADE E SEU NOME COMPLETO

                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(subsystems[index].entity[index2] + ' - ',
                            style: nameStyle()),
                        Expanded(
                            child: Text(subsystems[index].entityName[index2],
                                style: nameStyle2()))
                      ],
                    ),

                    //DESCRIÇÃO DA ENTIDADE
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 2, 5, 5),
                          child: Text(
                            subsystems[index].entityDesc[index2],
                            style: descStyle(),
                          ),
                        ),

                        //PARAMETROS DA ENTIDADE
                        for (int i in indexNum)
                          Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: paramData(index2, i)),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      )),
    );
  }

  //TODO: CHANGE 2 EXPANSIONTILE WIDGET
  Widget paramData(int entity, int param) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              flex: 1,
              child: Center(
                  child: Text(
                      subsystems[index].params[entity][param][0] + ' - ',
                      style: TextStyle(color: Colors.black)))),
          Expanded(
              flex: 5,
              child: Text(subsystems[index].params[entity][param][1],
                  style: TextStyle(color: Colors.black))),
        ],
      ),
    );
  }
}
