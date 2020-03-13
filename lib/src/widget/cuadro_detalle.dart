import 'package:flutter/material.dart';

class CuadroDetalle extends StatelessWidget {
  @override
  Widget build(BuildContext context) { 
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[

        menuSuperior(context),
        Expanded(child: Container()),
        ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50), topRight: Radius.circular(50)),
          child: Container(
              width: MediaQuery.of(context).size.width,
              height: 300.0,            
              color: Colors.white,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 18,
                    ),
                    Text(
                      'CAUSA RELLENA',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 25.0),
                    ),
                    SizedBox(
                      height: 5,
                    ),                    
                    estrellas(context),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 30.0),
                      child: Text(
                        'La causa a la limeña, mase de papa con rellena de pollo',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'S/. 18',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                          color: Colors.green),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    contador(context),
                   
                  ],
                ),
              )
            ),
        )
      ],
    );
  }

  Widget menuSuperior(BuildContext context){
    return SafeArea(
          child: GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, 'Home');
            },
                      child: Container(
              padding: EdgeInsets.all(20),            
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Container(
                width: 30,
                height: 30,
                color: Color.fromRGBO(193, 193, 193, 0.5),
                child: Icon(Icons.keyboard_arrow_left,color: Colors.white, size: 30,)
            ),
              )
            ),
          ),
        );
  }

  Widget estrellas(BuildContext context){
    return Container(
                      width: MediaQuery.of(context).size.width - 200,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 35.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.star,
                              color: Colors.green,
                            ),
                            Icon(Icons.star, color: Colors.green),
                            Icon(Icons.star, color: Colors.green),
                            Icon(Icons.star_border, color: Colors.green),
                            Icon(Icons.star_border, color: Colors.green),
                          ],
                        ),
                      ),
                    );
  }

  Widget contador(BuildContext context){
    return  Container(
                      width: MediaQuery.of(context).size.width - 150,
                      child: Container(
                        height: 70,
                        color: Color.fromRGBO(193, 193, 193, 0.5),
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                                                          child: Container(
                                // padding: EdgeInsets.all(10),
                                width: 40.0,
                                height: 40.0,
                                color: Colors.white,
                                child: Text(
                                  "-",textAlign: TextAlign.center,
                                  style: TextStyle(
                                      
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Center(
                                child: Container(
                                  color: Colors.white,
                                  width: 100,
                                  height: 40.0,
                                  child: Text(
                                    "0",textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 30.0,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                                                          child: Container(                                
                                width: 40.0,
                                height: 40.0,
                                color: Colors.white,
                                child: Text(
                                  "+",textAlign: TextAlign.center,
                                  style: TextStyle(
                                      
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
  }

}
