import 'package:sys_companion/screens/ANSI.dart';
import 'package:sys_companion/screens/SAGE_companions.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sys_companion/screens/qr_screen.dart';
import 'package:sys_companion/assets/commonUI.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //backgroundColor: Colors.red,
          backgroundColor: Colors.blue,
          elevation: 0,
          title: Row(
            children: <Widget>[
              //SC_AppBar(),
              Text(
                ' System Companion',
                style: TextStyle(
                    fontFamily: 'SanFrancisco',
                    fontSize: 30,
                    color: Colors.white
                    //color: Colors.white
                    ),
              ),
            ],
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter, end: Alignment.topCenter,
                  //colors: [Colors.red, Colors.redAccent, Colors.grey[100]]
                  colors: [Colors.grey[100], Colors.blueAccent, Colors.blue])),
          child: Column(
            children: <Widget>[
              goToPage(
                  'SAGE Companion',
                  'Descrição detalhada dos subsistemas do SAGE e principais comandos.',
                  SAGE_Companions()),
              goToPage(
                  'Tabela ANSI',
                  'Lista com os números de identificação dos componentes de um sistema elétrico.',
                  ANSI()),
              // goToQR(),
              Expanded(
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: DBSImage(120, 120, 0.8)))
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

  Widget goToQR() {
    return Center(
      child: SizedBox(
        width: 350,
        height: 150,
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Card(
            color: Colors.grey[50],
            elevation: 10,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: ListTile(
                title: Text(
                  "Aprot QR",
                  style: TextStyle(fontSize: 28, fontFamily: 'SanFrancisco'),
                ),
                trailing: Icon(MdiIcons
                    .hammerWrench), //Icon(Icons.double_arrow, color: Colors.red),
                subtitle: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: Text('Em construção.'),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}







// Widget goToQRScreen(){
//   return GestureDetector(
//       onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => QRScreen()));},
//       child: SizedBox(
//         width: double.maxFinite,
//         child: Padding(
//           padding: const EdgeInsets.fromLTRB(50,5,50,5),
//           child: Container(
//             height: 60,
//             child: Card(
//               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
//               child: Center(
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     Icon(MdiIcons.qrcodeScan),
//                     Text(
//                       ' Escanear QR Code',
//                       textAlign: TextAlign.center,
//                       style: TextStyle(fontSize: 22),
//                     )
//                   ],
//                 )
//               )
//             ),
//           ),
//         ),
//       )
//   );
//
// }