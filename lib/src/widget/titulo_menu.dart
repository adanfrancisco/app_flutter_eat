import 'package:flutter/material.dart';

class TittleMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Text('Platillos',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                      ),
                      Expanded(child: Container()),
                      Container(
                        child: Icon(Icons.search),
                      ),
                    ],
                  ),
                );
  }
}