import 'package:flutter/material.dart';
import 'package:huslak/app_color.dart';
class carer1 extends StatefulWidget {
  const carer1({super.key});

  @override
  State<carer1> createState() => _carer1State();
}

class _carer1State extends State<carer1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
                children:
                [
                  Image.asset('assets/fe1.png'),
                  Padding(
                    padding: const EdgeInsets.only(top: 40,left: 20),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: Stack(children:[ Icon(Icons.arrow_back)
                                   ]
                                  ),
                    ),
                  )
             ]
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                Text('Suzanne Patience',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Text('€5.50/h',style: TextStyle(fontSize: 20,color: app_color.PrimaryColor1),),
                Row(
                  children: [
                    Icon(Icons.watch_later,color: app_color.PrimaryColor1,),
                    SizedBox(width: 10,),
                    TextButton(
                        
                        onPressed: () { 
                          showDialog(context: context, builder: (context) => AlertDialog(
                            titlePadding: EdgeInsets.all(0),
                            title: Container(
                              height: 80,
                              // padding: EdgeInsets.all(10),
                              // margin: EdgeInsets.only(bottom: 30),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                                color: app_color.PrimaryColor1
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(width: 10,),
                                  Text('Availability',style: TextStyle(color: Colors.white),),
                                  GestureDetector(
                                      onTap: (){
                                        Navigator.pop(context);
                                      },
                                      child: Icon(Icons.clear,size: 20,color: Colors.white,))
                                ],
                              ),
                            ),
                            content: Container(
                              width: 560,
                              height: 300,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                children: [
                                  IntrinsicHeight(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Sunday',style: TextStyle(fontSize: 16),),
                                      Text('Not available',style: TextStyle(fontSize: 16),)
                                    ],
                                  ),
                                  Divider(
                                    height: 20,
                                    thickness: 1,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Monday',style: TextStyle(fontSize: 16),),
                                      Text('11:00 AM - 08:00 AM',style: TextStyle(fontSize: 16),)
                                    ],
                                  ),
                                  Divider(
                                    height: 20,
                                    thickness: 1,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Tuesday',style: TextStyle(fontSize: 16),),
                                      Text('09:45 AM - 06:45 AM',style: TextStyle(fontSize: 16),)
                                    ],
                                  ),
                                  Divider(
                                    height: 20,
                                    thickness: 1,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Wednesday',style: TextStyle(fontSize: 16),),
                                      Text('10:00 AM - 07:00 AM',style: TextStyle(fontSize: 16),)
                                    ],
                                  ),
                                  Divider(
                                    height: 20,
                                    thickness: 1,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Thursday',style: TextStyle(fontSize: 16),),
                                      Text('Not available',style: TextStyle(fontSize: 16),)
                                    ],
                                  ),
                                  Divider(
                                    height: 20,
                                    thickness: 1,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Friday',style: TextStyle(fontSize: 16),),
                                      Text('09:45 AM - 06:45 AM',style: TextStyle(fontSize: 16),)
                                    ],
                                  ),
                                  Divider(
                                    height: 20,
                                    thickness: 1,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Saturday',style: TextStyle(fontSize: 16),),
                                      Text('10:00 AM - 07:00 AM',style: TextStyle(fontSize: 16),)
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          );
                        },
                        child: Text('Availability',style: TextStyle(fontSize: 18),))
                  ],
                ),
                SizedBox(height: 20,),
                Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed \n do eiusmod tempor incididunt ut labore et dolore magna \naliqua. Ut enim ad minim veniam, quis nostrud exercitation \n ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
              SizedBox(height: 20,),
                Text('Known Languages',style: TextStyle(fontSize: 16,color: Colors.black54),),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/co1.png',),
                    Image.asset('assets/co2.png'),
                    Image.asset('assets/co3.png'),
                    Image.asset('assets/co4.png'),
                    Image.asset('assets/co5.png'),
        
                  ],
                )
              ],
              ),
            )
           ]
          ),
      )
    );
  }
}
