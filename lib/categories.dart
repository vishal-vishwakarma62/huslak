import 'package:flutter/material.dart';
import 'package:huslak/Hotals.dart';
import 'package:huslak/airport_transfer.dart';
import 'package:huslak/app_color.dart';
class categories extends StatefulWidget {
  const categories({super.key});

  @override
  State<categories> createState() => _categoriesState();
}

class _categoriesState extends State<categories> {
  String tittle='Accommodation';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(

                children: [
                  CircleAvatar(
                    child: Image.asset('assets/sant jordi.png'),
                    radius: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text('Barcelona - Sant Jordi Cardiovascular Center',style: TextStyle(fontSize: 15),),
                  ),
                  Icon(Icons.keyboard_arrow_down_rounded,color: Colors.black26,)
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount:15 ,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                    mainAxisExtent: 160
                ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: (){
                        setState(() {
                          if(arrname[index].toString()=="Accommodation"){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ElevatedButton(
                                onPressed: (){
                                 showDialog(context: context, builder: (BuildContext context){
                                  return AlertDialog(
                                   content: Container(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                           ],
                                    ),
                              ),
                        );
                          });
                      },
                                child:
                                Container(
                                  height: 620,
                                  width: 560,
                                  child: Column(
                                    children: [
                                      InkWell(
                                        onTap: (){
                                        //  Navigator.push(context, MaterialPageRoute(builder: (context) => Hotels(),));
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 30),
                                          child: Container(
                                            margin: EdgeInsets.only(bottom: 25),
                                            height: 120,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(8),
                                               color: app_color.PrimaryColor1
                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Image.asset('assets/pop.png'),
                                                Text('Hotels',style: TextStyle(color: Colors.white,fontSize: 20),)
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: (){
                                         // Navigator.push(context, MaterialPageRoute(builder: (context) => Monthly_rental_apartments(),));
                                        },
                                        child: Container(
                                          margin: EdgeInsets.only(bottom: 25),
                                          height: 120,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(8),
                                             color: app_color.PrimaryColor1
                                          ),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Image.asset('assets/pop1.png'),
                                              Text('Monthly rental\n apartments',style: TextStyle(color: Colors.white,fontSize: 20),)
                                            ],
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: (){
                                        //  Navigator.push(context, MaterialPageRoute(builder: (context) => Short_stay_apartments(),));
                                        },
                                        child: Container(
                                          margin: EdgeInsets.only(bottom: 25),
                                          height: 120,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(8),
                                             color: app_color.PrimaryColor1
                                          ),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Image.asset('assets/pop2.png'),
                                              Text('Short stay \napartments',style: TextStyle(color: Colors.white,fontSize: 20),)
                                            ],
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: (){
                                        //  Navigator.push(context, MaterialPageRoute(builder: (context) => Rooms(),));
                                        },
                                        child: Container(
                                          margin: EdgeInsets.only(bottom: 25),
                                          height: 120,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(8),
                                            color: app_color.PrimaryColor1
                                          ),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Image.asset('assets/pop3.png'),
                                              Text('Rooms',style: TextStyle(color: Colors.white,fontSize: 20),)
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                              ),
                            ),
                            )
                            );
                          }
                        });
                        if(arrname[index].toString()=="Airport/Transfer"){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => airport_transfer(),));
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color:app_color.PrimaryColor1,

                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 15,),
                            Text(arrname[index],style: TextStyle(color: Colors.white),),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Image.asset(imagename[index],height: 70,),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
var imagename=['assets/acomendation.png','assets/transfer.png','assets/flight.png',
  'assets/car rental.png','assets/translator.png','assets/carer.png','assets/pharmacies.png',
  'assets/medrism.png','assets/doctopr.png','assets/super market.png','assets/atm.png',
  'assets/restorent.png','assets/activities.png','assets/gold box.png','assets/emergency.png'];
var arrname=['Accommodation','Airport/Transfer','Flights','Car Rental','Translation','Carer',
'Pharmacies','MEDRISM','Find Doctor','Super markets','ATM','Restaurants','Activities',
'Gold box','Emergency numbers'];
