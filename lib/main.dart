import 'package:flutter/material.dart';
import 'package:flutter_app_6319c10029/views/login_ui.dart';

 void main(List<String> args) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginUI(),
      theme: ThemeData(
        fontFamily: 'Kanit',
      ),
    ),
  );
}