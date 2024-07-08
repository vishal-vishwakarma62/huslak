import 'package:flutter/material.dart';
import 'package:huslak/app_color.dart';
import 'package:huslak/choose_city.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';
class otp extends StatefulWidget {
  const otp({super.key});

  @override
  State<otp> createState() => _otpState();
}

class _otpState extends State<otp> {
  TextEditingController controller=TextEditingController();
  get child=>null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("OTP verification",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              Text("OTP has been sent to +91 78945 61230",style: TextStyle(color: Colors.black26),),

              Padding(
                padding: const EdgeInsets.only(left: 40,top: 40),
                child: PinCodeTextField(
                  controller: controller,
                  maxLength: 4,
                  autofocus: true,
                  wrapAlignment: WrapAlignment.center,
                  pinBoxWidth: 50,
                  pinBoxRadius: 10,
                  pinBoxHeight: 50,
                  pinBoxBorderWidth: 2,
                  pinBoxOuterPadding: EdgeInsets.all(18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: app_color.PrimaryColor1,
                  ),
                  child: Center(child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => choose_city(),));
                      },
                      child: Text("Verify",style: TextStyle(color: Colors.white),))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60,top: 40),
                child: Text.rich(
                  TextSpan(
                    text: "Don't recieve otp?",
                    style: TextStyle(fontSize: 15),
                    children: [
                      TextSpan(
                        text: '  Request again',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: app_color.PrimaryColor1,
                        ),
                      ),
                    ],
                  ),

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
