import 'package:flutter/material.dart';
import 'package:huslak/app_color.dart';
class flights extends StatefulWidget {
  const flights({super.key});

  @override
  State<flights> createState() => _flightsState();
}

class _flightsState extends State<flights> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: app_color.PrimaryColor1,
      appBar: AppBar(
        backgroundColor: app_color.PrimaryColor1,
        title: Text('Flights',style: TextStyle(fontSize: 18),),
        leading: Icon(Icons.arrow_back),
        titleSpacing: -6,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 40),
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // SizedBox(width: 20,),
                        Row(
                          children: [
                            SizedBox(width: 20,),
                            Image.asset(imagename[index]),
                            SizedBox(width: 40,),
                            Column(
                              children: [
                                Text('Departure',style: TextStyle(color: Colors.black26),),
                                Text('4:25 pm'),
                                SizedBox(height: 20,),
                                Text('Estimation',style: TextStyle(color: Colors.black26)),
                                Text('7h 15m'),
                              ],
                            ),
                            SizedBox(width: 50,),
                            Column(
                              children: [
                                Text('Arrive',style: TextStyle(color: Colors.black26)),
                                Text('7:40 pm'),
                                SizedBox(height: 20,),
                                Text('€40.00',style: TextStyle(color: app_color.PrimaryColor1,fontSize: 16),),
                                Text('/person')
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
var imagename=['assets/fl.png','assets/fl1.png','assets/fl2.png','assets/fl1.png','assets/fl.png'];
