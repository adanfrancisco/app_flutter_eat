import 'package:app_ddc_template/src/page/detalle_page.dart';
import 'package:app_ddc_template/src/page/home_page.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'Home',
      routes:{
        'Home' : (BuildContext context) => HomePage(),
        'Detalle' : (BuildContext context) => DetallePage(),
      } ,
    );
  }
}