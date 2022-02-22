import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:sys_companion/assets/commonUI.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';

class QRScreen extends StatefulWidget {
  @override
  QRScreenState createState() => QRScreenState();
}

class QRScreenState extends State<QRScreen> {
  String barcode = "";
  int docNumber = -1;
  int dataLength;
  List listNames;
  List listNamesFilter;
  Firestore firestore = Firestore.instance;

  _getLength() async {
    firestore.collection('reles').getDocuments().then((data) async {
      dataLength = data.documents.length;
    });
  }

  _getNames() async {
    int i;
    List _listNames = List();

    var docs = await firestore.collection('reles').getDocuments();
    int refLen = docs.documents.length;

    for (i = 0; i < refLen; i++) {
      _listNames.add(docs.documents[i].documentID.toString());
    }
    setState(() {
      listNames = _listNames;
    });
  }

  popFilter(filter) {
    int i;
    List _listNamesFilter = List();
    for (i = 0; i < dataLength; i++) {
      if (listNames[i].toLowerCase().contains(filter.toLowerCase())) {
        _listNamesFilter.add(listNames[i]);
      }
    }
    if (_listNamesFilter.isEmpty) {
      _listNamesFilter.add('Nenhum resultado foi encontrado.     ');
    }
    setState(() {
      listNamesFilter = _listNamesFilter;
    });
    return listNamesFilter;
  }

  getDocumentHash(docName) async {
    int i;

    var docs = await firestore.collection('reles').getDocuments();
    int refLen = docs.documents.length;

    for (i = 0; i < refLen; i++) {
      if (docs.documents[i].documentID == docName) {
        setState(() {
          docNumber = i;
        });
        return true;
      } else {
        docNumber = null;
      }
    }
  }

  @override
  initState() {
    super.initState();
    _getNames();
    _getLength();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //backgroundColor: Colors.red,
          backgroundColor: Colors.grey[50],
          elevation: 0.5,
          title: Row(
            children: <Widget>[
              DBSAppBar(),
              Text(
                ' Aprot QR',
                style: TextStyle(
                    fontFamily: 'SanFrancisco',
                    fontSize: 25,
                    color: Colors.black
                    //color: Colors.white
                    ),
              ),
            ],
          ),
          leading: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: BackButton(color: Colors.red),
          ),
          //iconTheme: IconThemeData(color: Colors.black),
          actions: <Widget>[
            Builder(
                builder: (context) => IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () => Scaffold.of(context).openEndDrawer(),
                    ))
          ],
        ),
        body: Stack(
          children: <Widget>[DBSLogo(), MainBody()],
        ),
        endDrawer: SearchDrawer(),
        //body: MainBody(),
        floatingActionButton: FloatingButton(),
        resizeToAvoidBottomInset: false);
  }

  Widget MainBody() {
    return SingleChildScrollView(
      physics: ScrollPhysics(),
      child: StreamBuilder(
          stream: Firestore.instance.collection('reles').snapshots(),
          builder: (context, snapshot) {
            if (docNumber != null && docNumber >= 0) {
              var docData = snapshot.data.documents[docNumber].data;
              int docLen = docData.length;

              String docName = snapshot.data.documents[docNumber].documentID;
              String docMarca =
                  snapshot.data.documents[docNumber]['header']['Marca'];
              String docModelo =
                  snapshot.data.documents[docNumber]['header']['Modelo'];
              String docNumS =
                  snapshot.data.documents[docNumber]['header']['NumS'];
              String docTipo =
                  snapshot.data.documents[docNumber]['header']['Tipo'];

              if (!snapshot.hasData) return Text('Carregando');
              return Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  children: <Widget>[
                    Header(docName, docMarca, docModelo, docNumS, docTipo),
                    ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: docLen,
                        itemBuilder: (context, index) => buildItem(
                            context,
                            docData.keys.elementAt(index),
                            docData.values.elementAt(index)))
                  ],
                ),
              );
            } else if (docNumber == -1) {
              return StartScreen();
            } else {
              return NotFoundScreen();
            }
          }),
    );
  }

  Widget buildItem(BuildContext context, documentKey, documentValue) {
    dataStyle() {
      return TextStyle(
        fontSize: 16,
        //fontWeight: FontWeight.bold,
      );
    }

    if (documentKey != 'header') {
      return Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 10, 10),
        child: Row(
          children: <Widget>[
            Expanded(flex: 6, child: Text(documentKey, style: dataStyle())),
            Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(documentValue, style: dataStyle()),
                ))
          ],
        ),
      );
    } else {
      return Container();
    }
  }

  Widget Header(
      String name, String marca, String modelo, String numS, String tipo) {
    headerStyle() {
      return TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      );
    }

    return Column(
      children: <Widget>[
        Center(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            modelo,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        )),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 0, 10),
          child: Container(
              alignment: Alignment(-1, -1),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                          flex: 1,
                          child: Text('Marca: $marca', style: headerStyle())),
                      Expanded(
                          flex: 1,
                          child: Text('Modelo: $modelo', style: headerStyle())),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                          flex: 1,
                          child: Text('Número de série: $numS',
                              style: headerStyle())),
                      Expanded(
                          flex: 1,
                          child: Text('Tipo: $tipo', style: headerStyle())),
                    ],
                  ),
                  Divider(height: 30),
                  Row(
                    children: <Widget>[
                      Expanded(
                          flex: 7,
                          child: Text('Propriedades',
                              style: TextStyle(fontSize: 26))),
                      Expanded(
                          flex: 4,
                          child: Text('Descrição',
                              style: TextStyle(fontSize: 26))),
                    ],
                  )
                ],
              )),
        )
      ],
    );
  }

  Widget StartScreen() {
    return Padding(
      padding: const EdgeInsets.only(top: 100),
      child: Center(
        child: Container(
          alignment: Alignment.center,
          child: Text(
            'Bem vindo!\nEscaneie para começar.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontFamily: 'SaoFrancisco',
            ),
          ),
        ),
      ),
    );
  }

  Widget NotFoundScreen() {
    return Padding(
      padding: const EdgeInsets.only(top: 100),
      child: Center(
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: Text(
                'Ocorreu um erro :(\n',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'SaoFrancisco',
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                'Não encontramos o seu QR Code.\n\n'
                'Se o problema persistir, por favor contate:',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'SaoFrancisco',
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: SelectableText(
                  'bruno.antonieto@aprot.com.br',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'SaoFrancisco',
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget FloatingButton() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Container(
          height: 60,
          width: 40,
          child: FloatingActionButton(
            heroTag: 'close',
            child: Icon(MdiIcons.close),
            onPressed: clean,
          ),
        ),
        FloatingActionButton(
          heroTag: 'scan',
          child: Icon(MdiIcons.qrcode, size: 32),
          onPressed: scan,
        ),
      ],
    );
  }

  Widget SearchDrawer() {
    TextEditingController searchController = TextEditingController();

    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 100,
            child: DrawerHeader(
                padding: EdgeInsets.zero,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Card(
                      child: Padding(
                    padding: const EdgeInsets.fromLTRB(5, 5, 5, 8),
                    child: TextField(
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      decoration: InputDecoration(
                          icon: Container(
                              height: 22,
                              width: 18,
                              child: Icon(Icons.search, color: Colors.grey)),
                          hintText: 'Pesquisar...',
                          hintStyle: TextStyle(fontSize: 16)),
                      controller: searchController,
                      onSubmitted: (searchController) {
                        popFilter(searchController.toString());
                      },
                    ),
                  )),
                )),
          ),
          listNamesFilter?.isEmpty ?? true ? Container() : resultText(),
          listNamesFilter?.isEmpty ?? true
              ? Container()
              : ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: listNamesFilter.length,
                  itemBuilder: (context, index) {
                    return SearchItems(index);
                  })
        ],
      ),
    );
  }

  Widget resultText() {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Text(
        'Resultados:',
        style: TextStyle(
          fontSize: 22,
        ),
      ),
    );
  }

  Widget SearchItems(int index) {
    return Column(children: [
      Divider(height: 1),
      GestureDetector(
        onTap: () {
          getDocumentHash(listNamesFilter[index]);
          Navigator.pop(context);
        },
        child: Container(
          height: 50,
          child: ListTile(
              title: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[Text(listNamesFilter[index])],
            ),
          )),
        ),
      ),
    ]);
  }

  clean() async {
    setState(() {
      (listNamesFilter != null) ? listNamesFilter.clear() : barcode = '';
      docNumber = -1;
    });
  }

  Future scan() async {
    try {
      var result = await BarcodeScanner.scan();
      setState(() => this.barcode = result.rawContent);
      //TODO: IfElse Statement depending on what's searching
      getDocumentHash(barcode);
    } on PlatformException catch (e) {
      if (e.code == BarcodeScanner.cameraAccessDenied) {
        setState(() {
          this.barcode = 'The user did not grant the camera permission!';
        });
      } else {
        setState(() => this.barcode = 'Unknown error: $e');
      }
    } on FormatException {
      setState(() => this.barcode =
          'null (User returned using the "back"-button before scanning anything. Result)');
    } catch (e) {
      setState(() => this.barcode = 'Unknown error: $e');
    }
    //getDocumentHash(barcode);
  }
}
