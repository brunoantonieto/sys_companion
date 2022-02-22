import 'package:sys_companion/screens/start_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'System Companion',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      //TODO: debugShowCheckedModeBanner: false,
    );
  }
}


//Add the camera permission to your AndroidManifest.xml
//
//<uses-permission android:name="android.permission.CAMERA" />
