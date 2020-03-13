import 'package:app_ddc_template/src/widget/cuadro_detalle.dart';
import 'package:app_ddc_template/src/widget/fondo_detalle.dart';
import 'package:flutter/material.dart';

class DetallePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Texto'),
      // ),
      body: Stack(
        children: <Widget>[
          FondoDetalle(),
          CuadroDetalle(),
        ],
      ),
    );
  }
}