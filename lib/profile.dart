import 'package:flutter/material.dart';
import 'package:huslak/app_color.dart';
class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        leading: Icon(Icons.arrow_back),
        titleSpacing: -8,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                        backgroundColor: Colors.blue.shade50,
                        child: Icon(Icons.settings,size: 16,color: app_color.PrimaryColor1,)),
                    SizedBox(width: 10,),
                    Expanded(child: Text('My profile',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
                    Icon(Icons.arrow_forward_ios_outlined,size: 16,color: app_color.PrimaryColor1,)
                  ],
                ),
              SizedBox(height: 25,),
              Row(
                children: [
                  CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.blue.shade50,
                      child: Icon(Icons.watch_later_outlined,size: 16,color: app_color.PrimaryColor1,)),
                  SizedBox(width: 10,),
                  Expanded(child: Text('Booking history',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
                  Icon(Icons.arrow_forward_ios_outlined,size: 16,color: app_color.PrimaryColor1,)
                ],
              ),
              SizedBox(height: 25,),
              Row(
                children: [
                  CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.blue.shade50,
                      child: Icon(Icons.send,size: 16,color: app_color.PrimaryColor1,)),
                  SizedBox(width: 10,),
                  Expanded(child: Text('Share',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
                  Icon(Icons.arrow_forward_ios_outlined,size: 16,color: app_color.PrimaryColor1,)
                ],
              ),
              SizedBox(height: 25,),
              Row(
                children: [
                  CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.blue.shade50,
                      child: Icon(Icons.chat,size: 16,color: app_color.PrimaryColor1,)),
                  SizedBox(width: 10,),
                  Expanded(child: Text('Suggest service',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
                  Icon(Icons.arrow_forward_ios_outlined,size: 16,color: app_color.PrimaryColor1,)
                ],
              ),
              SizedBox(height: 25,),
              Row(
                children: [
                  CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.blue.shade50,
                      child: Icon(Icons.phone,size: 16,color: app_color.PrimaryColor1,)),
                  SizedBox(width: 10,),
                  Expanded(child: Text('Contact us',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
                  Icon(Icons.arrow_forward_ios_outlined,size: 16,color: app_color.PrimaryColor1,)
                ],
              ),
              SizedBox(height: 25,),
              Row(
                children: [
                  CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.blue.shade50,
                      child: Icon(Icons.privacy_tip_outlined,size: 16,color: app_color.PrimaryColor1,)),
                  SizedBox(width: 10,),
                  Expanded(child: Text('Privacy policy',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
                  Icon(Icons.arrow_forward_ios_outlined,size: 16,color: app_color.PrimaryColor1,)
                ],
              ),
              SizedBox(height: 25,),
              Row(
                children: [
                  CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.blue.shade50,
                      child: Icon(Icons.file_copy,size: 16,color: app_color.PrimaryColor1,)),
                  SizedBox(width: 10,),
                  Expanded(child: Text('Terms of use',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
                  Icon(Icons.arrow_forward_ios_outlined,size: 16,color: app_color.PrimaryColor1,)
                ],
              ),
              SizedBox(height: 25,),
              Row(
                children: [
                  CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.blue.shade50,
                      child: Icon(Icons.logout,size: 16,color: app_color.PrimaryColor1,)),
                  SizedBox(width: 10,),
                  Expanded(child: Text('Logout ',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.red),)),
                ],
              ),
              Divider(
                height: 40,
                thickness: 1,
              ),
              Text('Follow us : ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              // Row(
              //   children: [
              //     Icon(Icons.facebook,size: 40,color: Colors.black26,),
              //     Icon(Icons),
              //     Icon(Icons.facebook,size: 40,),
              //     Icon(Icons.facebook,size: 40,),
              //   ],
              // )
            ]
          ),
        ),
      ),
    );
  }
}
