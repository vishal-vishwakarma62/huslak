import 'package:flutter/material.dart';
import 'package:huslak/app_color.dart';
class activities extends StatefulWidget {
  const activities({super.key});

  @override
  State<activities> createState() => _activitiesState();
}

class _activitiesState extends State<activities> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:Column(
          children: [
            Stack(

                children:[ Image.asset('assets/acti.png'),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0,top: 35),
                    child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.arrow_back)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 200,left: 18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Barcelona',style: TextStyle(fontSize: 20,color: Colors.white),),
                        Text('Spain',style: TextStyle(color: Colors.white),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 260),
                    child: Container(
                     height: 680,
                    //  width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(50),topLeft: Radius.circular(50)),
                        color: Colors.white
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10,),
                            Text('Activities',style: TextStyle(fontSize: 20),),
                            ListView.builder(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: 3,
                              itemBuilder: (context, index) {
                                return SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Card(
                                        color: Colors.white,
                                        // elevation:1,
                                        margin: EdgeInsets.only(bottom: 20),
                                        child: Container(
                                          height: 150,
                                          // margin: EdgeInsets.only(),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: Row(
                                            children: [
                                              Image.asset(imagename[index],width: 150,fit: BoxFit.cover,),
                                              SizedBox(width: 20,),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(height: 20,),
                                                  Text(arrname[index],style: TextStyle(fontSize: 16),),
                                                  SizedBox(height: 8,),
                                                  Text('A UNESCO World Heritage Site in Barcelona \n and experience a cheerful day with your loved \n ones in the dazzling vicinity',
                                                  style: TextStyle(fontSize: 10),),
                                                  SizedBox(height: 8,),
                                                  Text('€9.02',style: TextStyle(fontSize: 18,color: app_color.PrimaryColor1),)
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              
                            },)
                          ],
                        ),
                      ),
                    ),
                  ),

            ]
            ),
          ],
        ),
      ),
    );
  }
}
var imagename=['assets/pa1.png','assets/pa2.png','assets/pa2.png',];
var arrname=['Park Guell, Barcelona','Casa Mila, Barcelona','Aquarium, Barcelona'];
