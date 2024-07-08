import 'package:flutter/material.dart';
import 'package:huslak/app_color.dart';
class payment extends StatefulWidget {
  const payment({super.key});

  @override
  State<payment> createState() => _paymentState();
}

class _paymentState extends State<payment> {
  String? gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment'),
        leading: Icon(Icons.arrow_back),
        titleSpacing: -6,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total Amount',style: TextStyle(fontSize: 16),),
                Text('€30.00',style: TextStyle(fontSize: 17),),
              ],
            ),
            Divider(
              height: 50,
              thickness: 1,
            ),
            Text('Preferred Payment',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Credit/Debit card ',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                Radio(
                  activeColor: app_color.PrimaryColor1,
                  value: "Credit/Debit card ",
                  groupValue: gender,
                  onChanged: (value){
                    setState(() {
                      gender = value.toString();
                    });
                  },

                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('UPI',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                Radio(
                  activeColor: app_color.PrimaryColor1,
                  value: "UPI",
                  groupValue: gender,
                  onChanged: (value){
                    setState(() {
                  gender = value.toString();
                });
    },

                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Net Banking ',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                Radio(
                  activeColor: app_color.PrimaryColor1,
                  value: "Net Banking ",
                  groupValue: gender,
                  onChanged: (value){
                    setState(() {
                      gender = value.toString();
                    });
                  },

                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Cash ',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                Radio(
                  activeColor: app_color.PrimaryColor1,
                  value: "Cash ",
                  groupValue: gender,
                  onChanged: (value){
                    setState(() {
                      gender = value.toString();
                    });
                  },

                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
