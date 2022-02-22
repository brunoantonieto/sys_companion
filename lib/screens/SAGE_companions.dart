import 'package:flutter/gestures.dart';
import 'package:sys_companion/screens/SAGE_bizus.dart';
import 'package:sys_companion/screens/SAGE_entities.dart';
import 'package:sys_companion/assets/SAGE_model.dart';
import 'package:sys_companion/assets/commonUI.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sys_companion/screens/SAGE_subsystems.dart';
import 'package:url_launcher/url_launcher.dart';

class SAGE_Companions extends StatefulWidget {
  @override
  _SAGE_CompanionsState createState() => _SAGE_CompanionsState();
}

class _SAGE_CompanionsState extends State<SAGE_Companions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[50],
          leading: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: BackButton(color: Colors.blue),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: infoButton(),
            )
          ],
          elevation: 0,
          title: Row(
            children: <Widget>[
              // DBSAppBar(),
              Text(
                ' Companion',
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
            children: [
              //comandos
              goToPage(
                  "Comandos", "Principais comandos so SAGE", SAGE_Commands()),
              //tutoriais
              goToPage(
                  "Tutoriais", "Tutoriais gerais do SAGE", SAGE_Tutorials()),
              //manual
              goToPage(
                  "Subsistemas",
                  "Descrição dos subsistemas e entidades do SAGE, de acordo com o manual",
                  SAGE_Entities()),
              //hiperlinks
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  child: Column(
                    children: [
                      Text('Links para auxilio:',
                          style: TextStyle(fontSize: 16)),
                      goToNET('WikiDot SAGE',
                          'http://automatos.wikidot.com/sage-cepel'),
                      goToNET(
                          'Ricardo Guedes', 'https://ricardoguedes.eng.br/wp/'),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }

  Widget goToPage(String cardName, String cardDesc, cardRoute) {
    return Center(
      child: InkWell(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => cardRoute));
        },
        child: SizedBox(
          width: 350,
          height: 150,
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Card(
              color: Colors.grey[50],
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: ListTile(
                  title: Text(
                    "$cardName",
                    style: TextStyle(fontSize: 28, fontFamily: 'SanFrancisco'),
                  ),
                  trailing: Icon(Icons.double_arrow, color: Colors.blue),
                  subtitle: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: Text('$cardDesc',
                        style: TextStyle(color: Colors.grey[800])),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget goToNET(String siteName, String siteURL) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: RichText(
          text: TextSpan(
              text: '$siteName',
              style: TextStyle(color: Colors.blue),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launch('$siteURL');
                })),
    );
  }

  //botão de informação no canto superior direito
  Widget infoButton() {
    return GestureDetector(
      onTap: () {
        infoDialog(context);
      },
      child: Icon(Icons.info_outline, color: Colors.grey),
    );
  }

  infoDialog(BuildContext context) {
    // configura o button
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.pop(context);
      },
    );
    // configura o  AlertDialog
    AlertDialog alerta = AlertDialog(
      title: Text("Informação"),
      content: Text(
          "Os detalhes dos subsistamas foram retirados do Anexo 17 do Manual do SAGE. "
          "\n\nPara reportar bugs e erratas nesta aplicação, por favor envie um e-mail para:"
          "\n\nbruno.antonieto@dbstec.com.br"),
      actions: [
        okButton,
      ],
    );
    // exibe o dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alerta;
      },
    );
  }
}
