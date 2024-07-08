import 'package:flutter/material.dart';
import 'package:huslak/app_color.dart';
import 'package:huslak/login.dart';
class select extends StatefulWidget {
  const select({super.key});

  @override
  State<select> createState() => _selectState();
}

class _selectState extends State<select> {

  bool _UserSelected = false;

  bool _VendorSelected = false;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 18,right: 18,),
          child: Column(
            children: [
              Center(
                  child: Text("Please select",style: TextStyle(fontSize: 20),)),
              Padding(
                padding: const EdgeInsets.only(top: 100,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap:(){
                        setState(() {
                          _UserSelected = true;
                          _VendorSelected = false;
                        });
              },
                      child: Container(
                        width: 170,
                        height: 210,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: _UserSelected ? app_color.PrimaryColor1 : Colors.black)
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 100,top: 10),
                              child: _UserSelected ? Icon(Icons.check_circle,color: app_color.PrimaryColor1,):
                                  Icon(Icons.circle,color: Colors.grey,)
                            ),
                            Image.asset("assets/user.png"),
                            Text('User',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap:(){
                        setState(() {
                          _UserSelected = false;
                          _VendorSelected = true;
                        });
                      },
                      child: Container(
                        width: 170,
                        height: 210,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: _VendorSelected ? app_color.PrimaryColor1 : Colors.black),
                        ),
                        child: Column(
                          children: [

                            Padding(
                              padding: const EdgeInsets.only(left: 100,top: 10),
                              child: _VendorSelected ? Icon(Icons.check_circle,color: app_color.PrimaryColor1,) : 
                              Icon(Icons.circle,color: Colors.grey,)
                            ),
                            Image.asset("assets/vendor.png"),
                            Text('Vendor',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: app_color.PrimaryColor1
                  ),
                  child: Center(child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => login(),));
                      },
                      child: Text("Continue",style: TextStyle(color: Colors.white),))),

                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
