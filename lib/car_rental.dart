import 'package:flutter/material.dart';
import 'package:huslak/app_color.dart';
class car_rental extends StatefulWidget {
  const car_rental({super.key});

  @override
  State<car_rental> createState() => _car_rentalState();
}

class _car_rentalState extends State<car_rental> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: app_color.PrimaryColor1,
      appBar: AppBar(
        backgroundColor: app_color.PrimaryColor1,
        title: Text('Car Rental'),
        leading: Icon(Icons.arrow_back),
        titleSpacing: -6,
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 20,),
              ListView.builder(
                physics: ScrollPhysics(),
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(bottom: 20),
                  height: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 25,),
                      Row(
                        children: [
                          Image.asset(imagename[index]),
                          SizedBox(width: 20,),
                           Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(arrname[index],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                              Row(
                                children: [
                                  Icon(Icons.event_seat),
                                  Text('Seat'),
                                  SizedBox(width: 20,),
                                  Icon(Icons.stream),
                                  Text('Automatic')
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Icon(Icons.event_seat),
                                  Text('Seat'),
                                  SizedBox(width: 20,),
                                  Icon(Icons.stream),
                                  Text('Automatic'),
                                ],
                              ),
                              Text('€60.00/d',style: TextStyle(fontSize: 16,color: app_color.PrimaryColor1),)
                            ],
                          ),
        
                        ],
                      )
                    ],
                  )
                );
              },)
            ],
          ),
        ),
      ) ,
    );
  }
}
var imagename=['assets/audi.png','assets/Land Rover .png','assets/Porsche.png','assets/Bmd.png','assets/audi.png'];
var arrname=['Audi R8 Spyder RWD','Land Rover Discovery Sport','Porsche 911 Carrera S','BMW M3','Audi R8 Spyder RWD'];
