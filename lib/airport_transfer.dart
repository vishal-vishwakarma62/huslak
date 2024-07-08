import 'package:flutter/material.dart';
import 'package:huslak/app_color.dart';
class airport_transfer extends StatefulWidget {
  const airport_transfer({super.key});

  @override
  State<airport_transfer> createState() => _airport_transferState();
}

class _airport_transferState extends State<airport_transfer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: app_color.PrimaryColor1,
      appBar: AppBar(
        backgroundColor: app_color.PrimaryColor1,
        title: Text('Airpot Transfer',style: TextStyle(fontSize: 18),),
        leading: Icon(Icons.arrow_back),
        titleSpacing: -6,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    height: 180,
                    margin: EdgeInsets.only(bottom: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white
                    ),
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(imagename[index]),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(arrname[index]),
                                Text(arrname1[index]),
                                Image.asset('assets/line.png',height: 60,width: 2,)
                              ],
                            ),
                          ],
                        ),
                      ],
                    )
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
var imagename=['assets/mahi.png','assets/sko.png','assets/maru.png','assets/tata.png','assets/jeep.png',];
var arrname=['Mahindra','Skoda','Maruti','Tata','Jeep'];
var arrname1=['New Thar 2020','Kushaq','New Swift','Nexon EV','Wrangler Unlimited'];
