import 'package:app_ddc_template/src/widget/descripcion_menu.dart';
import 'package:app_ddc_template/src/widget/imagen_menu.dart';
import 'package:app_ddc_template/src/widget/titulo_menu.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //  appBar: AppBar(
        //     title: Text('data'),
        //   ),
        body: Stack(
      children: <Widget>[
        SafeArea(
          child: Column(
            children: <Widget>[
              TittleMenu(),
              Container(
                  // color: Colors.white30,
                  height: MediaQuery.of(context).size.height - 90,
                  child: ListaMenu()),
            ],
          ),
        )
      ],
    ));
  }
}

class ListaMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        CartaMenu(),
        CartaMenu(),
        CartaMenu(),
        CartaMenu(),
        CartaMenu(),
        CartaMenu(),
        CartaMenu(),
      ],
    );
  }

  Widget CartaMenu(){
    return Container(
          // padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Container(
              height: 300,
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Stack(
                children: <Widget>[
                  ImagenMenu(),
                 DescripcionMenu(),
                ],
              )),
        );
  }


}

