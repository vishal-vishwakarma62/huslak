import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:huslak/app_color.dart';
class find_doctor1 extends StatefulWidget {
  const find_doctor1({super.key});

  @override
  State<find_doctor1> createState() => _find_doctor1State();
}

class _find_doctor1State extends State<find_doctor1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
      children:
      [
        Image.asset('assets/jamie.png'),
        Padding(
          padding: const EdgeInsets.only(left: 20,top: 50),
          child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.white,
              child: Icon(Icons.arrow_back)),
        )
      ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Row(
                   children: [
                     Text('Dr Jamie Trevelyan',style: TextStyle(fontSize: 20),),
                     SizedBox(width: 120,),
                     CircleAvatar(
                         radius: 20,
                         backgroundColor: app_color.PrimaryColor1,
                         child: Icon(Icons.phone,color: Colors.white,)),
                     SizedBox(width: 10,),
                     CircleAvatar(
                         radius: 20,
                         backgroundColor: app_color.PrimaryColor1,
                         child: Icon(Icons.videocam,color: Colors.white,))
                   ],
                 ),
                Text('Cardiologists'),
                Text('€5.50',style: TextStyle(fontSize:18,color: app_color.PrimaryColor1),),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Icon(CupertinoIcons.stopwatch,color: app_color.PrimaryColor1,),
                    SizedBox(width: 10,),
                    TextButton(
                        onPressed: (){
                          showDialog(context: context, builder: (context) => AlertDialog(
                            titlePadding: EdgeInsets.all(0),
                            title: Container(
                              height: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                                color: app_color.PrimaryColor1
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(width: 40,),
                                  Text('Availability',style: TextStyle(color: Colors.white),),
                                  GestureDetector(
                                      onTap: (){
                                        Navigator.pop(context);
                                      },
                                      child: Icon(Icons.clear,size: 20,color: Colors.white,)),
                                ],
                              ),
                            ),
                            content: Container(
                              width: 500,
                              height: 300,
                              child: Column(
                                children: [
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
                          ),);
                        },
                        child: Text('Availability',style: TextStyle(fontSize: 16,color:Colors.black,fontWeight: FontWeight.w800),))
                  ],
                ),
                SizedBox(height: 10,),
                Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed \n do eiusmod tempor incididunt ut labore et dolore magna \n aliqua. Ut enim ad minim veniam, quis nostrud exercitation \n ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
               SizedBox(height: 15,),
                Text('Known Languages',style: TextStyle(fontSize: 16,color: Colors.black54),),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/c1.png'),
                    Image.asset('assets/c2.png'),
                    Image.asset('assets/c3.png'),
                    Image.asset('assets/c4.png'),
                    Image.asset('assets/c5.png'),
                  ],
                ),
                SizedBox(height: 10,),
                Text('15 Opiniones',style: TextStyle(fontSize: 16),),
                SizedBox(height: 10,),
                ListTile(
                  title: Text('Amelia Carol',style: TextStyle(fontSize: 18),),
                  subtitle: Row(
                    children: [
                      Icon(Icons.star,color: Colors.yellow,),
                      Icon(Icons.star,color: Colors.yellow,),
                      Icon(Icons.star,color: Colors.yellow,),
                      Icon(Icons.star,color: Colors.yellow,),
                      Icon(Icons.star,color: Colors.yellow,),
                    ],
                  ),
                  leading: Image.asset('assets/carol.png'),
                  trailing: Text('2 day ago'),
                ),
                SizedBox(height: 10,),
                Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do \n eiusmod tempor incididunt ut labore et dolore magna aliqua.',style: TextStyle(fontSize: 13),),
              SizedBox(height: 50,),
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: app_color.PrimaryColor1
                  ),
                  child: Center(child: Text('Pay now',style: TextStyle(color: Colors.white,fontSize: 16),)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
