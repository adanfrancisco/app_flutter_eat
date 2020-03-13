import 'package:flutter/material.dart';

class FondoDetalle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 190,
                color: Colors.black,
                child :FadeInImage(
                      placeholder: AssetImage('assets/loading.gif'),
                      image: NetworkImage(
                          'https://elcomercio.pe/resizer/KoiBFkFzHgTB_pwOyS25FDzSRYQ=/980x528/smart/arc-anglerfish-arc2-prod-elcomercio.s3.amazonaws.com/public/5PYR5KRVWZBWPJCSP63IBVPYP4.jpg'),
                      fit: BoxFit.cover,
              ),
          );
  }
}