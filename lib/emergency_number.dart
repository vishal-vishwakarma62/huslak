import 'package:flutter/material.dart';
import 'package:huslak/app_color.dart';
class emergency_number extends StatefulWidget {
  const emergency_number({super.key});

  @override
  State<emergency_number> createState() => _emergency_numberState();
}

class _emergency_numberState extends State<emergency_number> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      appBar: AppBar(
        // backgroundColor: Colors.white70,
        title: Text('Emergency Numbers'),
        leading: Icon(Icons.arrow_back),
        titleSpacing: -6,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 7,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 20),
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(arrname[index]),
                          subtitle: Text(arrname1[index],style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                          trailing: CircleAvatar(
                            radius: 25,
                              backgroundColor: app_color.PrimaryColor1,
                              child: Icon(Icons.phone,color: Colors.white,)),

                        )
                      ],
                    ),

                  );

              },)
          ],
          ),
        ),
      ),
    );
  }
}
var arrname=['General Emergency','CatSalut Respon (Medical Emergency)','Fire Service','Guardia Urbana (Local Police)',
'Mossos d’Esquadra (Catalan Police Force)','Policia Nacional','Guardia Civil'];
var arrname1=['112','112','112','112','112','112','112'];
