import 'package:flutter/material.dart';

class ImagenMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, 'Detalle');
      },
      child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: FadeInImage(
                        placeholder: AssetImage('assets/loading.gif'),
                        image: NetworkImage(
                            'https://elcomercio.pe/resizer/KoiBFkFzHgTB_pwOyS25FDzSRYQ=/980x528/smart/arc-anglerfish-arc2-prod-elcomercio.s3.amazonaws.com/public/5PYR5KRVWZBWPJCSP63IBVPYP4.jpg'),
                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width,
                        // height: 100,
                      ),
                    ),
    );
  }
}