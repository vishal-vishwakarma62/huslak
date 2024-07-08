import 'package:flutter/material.dart';
import 'package:huslak/app_color.dart';
import 'package:huslak/otp.dart';
class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Image.asset("assets/haslok1.png",)),
              Text("Phone Number"),
              Container(
                width: 375,
                height: 75,
                //color: Colors.black12,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter Phone Number ',
                   // prefixIcon: +91,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
          
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: app_color.PrimaryColor1
                  ),
                  child: Center(child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => otp(),));
                      },
                      child: Text("Continue",style: TextStyle(color:Colors.white),))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
