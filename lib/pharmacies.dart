import 'package:flutter/material.dart';
import 'package:huslak/app_color.dart';
class pharmacies extends StatefulWidget {
  const pharmacies({super.key});

  @override
  State<pharmacies> createState() => _pharmaciesState();
}

class _pharmaciesState extends State<pharmacies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: app_color.PrimaryColor1,
      appBar: AppBar(
        backgroundColor: app_color.PrimaryColor1,
        title: Text('Pharmacies'),
        leading: Icon(Icons.arrow_back),
        titleSpacing: -6,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  hintText: 'Search for pharmacy',
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Icon(Icons.search,color: app_color.PrimaryColor1,),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(height: 15,),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 5,

                itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset(imagename[index],height: 120,),
                          SizedBox(width: 16,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(arrname[index],style: TextStyle(fontSize: 16),),
                              Text(arrname1[index],style: TextStyle(fontSize: 10),),
                              Text(arrname2[index],style: TextStyle(color: app_color.PrimaryColor1),)
                            ],
                          ),
                        ],
                      ),


                    ],
                  ),
                );
              },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
var imagename =['assets/pharmacy.jpg','assets/pharmacy1.jpg','assets/pharmacy2.jpg','assets/pharmacy3.jpg','assets/pharmacy4.jpg',];
var arrname=['Farmacia de la Estación de','Farmacia Nadal','Farmàcia La Pedrera','Farmàcia Urquinaona','Centre Despecifics'];
var arrname1=['Estación de Sants Barcelona Plaça Dels \n Països Calatans, 08014 Barcelona  Spain','La Rambla, 121, s/n, 08002 Barcelona, Spain',
'Passeig de Gràcia, 90, 08008 Barcelona \n Spain',"Pl.d' dUrquinaona, 8, 08010 Barcelona Spain",'Gran Via de les Corts Catalanes, 08010 \n Barcelona, Spain'];
var arrname2=['500 mtr','600 mtr','800 mtr','1 km','1.2 km'];
