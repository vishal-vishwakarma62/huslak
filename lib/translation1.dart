import 'package:flutter/material.dart';
import 'package:huslak/app_color.dart';
class translation1 extends StatefulWidget {
  const translation1({super.key});

  @override
  State<translation1> createState() => _translation1State();
}

class _translation1State extends State<translation1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
              children:
              [
                Image.asset('assets/female.png'),
                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 40),
                  child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.arrow_back)),
                ),

          ]
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Phyllis Pullman',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    Text('Available',style: TextStyle(color: app_color.PrimaryColor3),)
                  ],
                ),
                Text('€4.00/h',style: TextStyle(fontSize: 16,color: app_color.PrimaryColor1),),
                Row(
                  children: [
                    Icon(Icons.watch_later_outlined,color: app_color.PrimaryColor1,),
                    //SizedBox(width: 10,),

                          TextButton(
                              onPressed: () {
                                 showDialog(
                              context: context,
                             builder: (ctx) => AlertDialog(
                               titlePadding: EdgeInsets.all(0),
                             title: Container(
                                 padding: EdgeInsets.all(10.0),
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                                   color: app_color.PrimaryColor1,
                                 ),
                                 child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                   children: [
                                    // SizedBox(width: 20,),
                                     Text("Availability",style: TextStyle(color: Colors.white),),
                                    // SizedBox(width: 100,),
                                     GestureDetector(
                                         onTap: (){
                                           Navigator.pop(context);
                                         },
                                         child: Icon(Icons.clear,color: Colors.white,))
                                   ],
                                 )),

                               content:Container(
                                 height: 300,
                                 width: 560,
                                 decoration: BoxDecoration(
                                   // border: Border(top: BorderSide(color: Appcolor.PrimaryColor2,width: 6))
                                 ),
                                 child: Column(
                                   children: [
                                     IntrinsicHeight(
                                       child: Row(
                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                         children: [
                                           Text('Sunday'),
                                           // VerticalDivider(width: 20,thickness: 1,),
                                           Text('Not available')
                                         ],
                                       ),
                                     ),
                                     Divider(height: 20,thickness: 1,),
                                     IntrinsicHeight(
                                       child: Row(
                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                         children: [
                                           Text('Monday'),
                                           //   VerticalDivider(width: 20,thickness: 1,),
                                           Text('11:00 AM - 12:00 AM')
                                         ],
                                       ),
                                     ),
                                     Divider(height: 20,thickness: 1,),
                                     IntrinsicHeight(
                                       child: Row(
                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                         children: [
                                           Text('Tuesday'),
                                           //   VerticalDivider(width: 20,thickness: 1,),
                                           Text('09:45 AM - 10:45 AM')
                                         ],
                                       ),
                                     ),
                                     Divider(height: 20,thickness: 1,),
                                     IntrinsicHeight(
                                       child: Row(
                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                         children: [
                                           Text('Wednesday'),
                                           //   VerticalDivider(width: 20,thickness: 1,),
                                           Text('10:00 AM - 11:00 AM')
                                         ],
                                       ),
                                     ),
                                     Divider(height: 20,thickness: 1,),
                                     IntrinsicHeight(
                                       child: Row(
                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                         children: [
                                           Text('Thursday'),
                                           //   VerticalDivider(width: 20,thickness: 1,),
                                           Text('Not available')
                                         ],
                                       ),
                                     ),
                                     Divider(height: 20,thickness: 1,),
                                     IntrinsicHeight(
                                       child: Row(
                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                         children: [
                                           Text('Friday'),
                                           //   VerticalDivider(width: 20,thickness: 1,),
                                           Text('10:40 AM - 11:40 AM')
                                         ],
                                       ),
                                     ),
                                     Divider(height: 20,thickness: 1,),
                                     IntrinsicHeight(
                                       child: Row(
                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                         children: [
                                           Text('Saturday'),
                                           //   VerticalDivider(width: 20,thickness: 1,),
                                           Text('10:00 AM - 11:00 AM')
                                         ],
                                       ),
                                     ),
                                     Divider(height: 20,thickness: 1,)
                                   ],
                                 ),
                               ),
    ),
    );
    },
                              child: Text('Availability',style: TextStyle(color: Colors.black),))]),
                SizedBox(height: 20,),
                Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed \n do eiusmod tempor incididunt ut labore et dolore magna \naliqua. Ut enim ad minim veniam, quis nostrud exercitation \n ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
               SizedBox(height: 15,),
                Text('Known Languages',style: TextStyle(color: Colors.black54),),
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
        ],
      ),
    );
  }
}
