import 'package:flutter/material.dart';
import 'package:huslak/app_color.dart';
import 'package:huslak/atm.dart';
class restaurants extends StatefulWidget {
  const restaurants({super.key});

  @override
  State<restaurants> createState() => _restaurantsState();
}

class _restaurantsState extends State<restaurants> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: app_color.PrimaryColor1,
      appBar: AppBar(
      title: Text('Restaurants'),
        leading: Icon(Icons.arrow_back),
        titleSpacing: -6,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    hintText: 'Search for Restaurants',
                    prefixIcon: Icon(Icons.search,color: app_color.PrimaryColor1,),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),

                    ),
                  ),
                ),
              ),
              SizedBox(height: 25,),
              GridView.builder(
                shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 15,
                    mainAxisExtent: 220,
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,

              ),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(imagename[index],),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10,width: 10,),
                              Text(arrname[index],style: TextStyle(fontSize: 13),),
                              Text(arrname1[index],style: TextStyle(fontSize: 10),),
                              Text('900 mtr',style: TextStyle(fontSize: 10),)
                            ],
                          ),
                        )

                      ],
                    ),

                  );
                },
              )
                ],
          ),
        ),
      ),

    );
  }
}
var imagename=['assets/gasa.png','assets/gracia.png','assets/rao.png','assets/viana.png','assets/gasa.png','assets/gracia.png',];
var arrname=['Gasa Amalia','Con Gracia','RAO Restaurant','Viana Barcelona','Gasa Amalia','Con Gracia'];
var arrname1=['Concepcion Public Market','Martinez de la Rosa Street','Carrer de les Sitges','del Vidre Barcelona',
  'Concepcion Public Market','Martinez de la Rosa Street',];
