import 'package:flutter/material.dart';

class DescripcionMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Positioned(
                    top: 160.0,
                    child: Container(
                      
                      width: MediaQuery.of(context).size.width - 30,
                      padding: EdgeInsets.symmetric(horizontal: 40.0,),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Card(
                          
                          // padding: EdgeInsets.symmetric(
                          //     vertical: 10.0, horizontal: 10.0),
                          color: Colors.white,
                          child: Column(
                            children: <Widget>[
                              SizedBox(height: 18,),
                              Text(
                                'CAUSA RELLENA',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0),
                              ),
                              SizedBox(height: 5,),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 20.0),
                                child: Text(
                                  'La causa a la limeña, mase de papa con rellena de pollo',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              SizedBox(height: 5,),
                              Text('S/. 18',style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0, color: Colors.green ),),
                              SizedBox(height: 18,),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
  }
}