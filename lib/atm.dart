import 'package:flutter/material.dart';
import 'package:huslak/app_color.dart';
class atm extends StatefulWidget {
  const atm({super.key});

  @override
  State<atm> createState() => _atmState();
}

class _atmState extends State<atm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: app_color.PrimaryColor1,
      appBar: AppBar(
        backgroundColor: app_color.PrimaryColor1,
        title: Text('ATM'),
        leading: Icon(Icons.arrow_back),
        titleSpacing: -6,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search for ATM',
                    prefixIcon: Icon(Icons.search,color: app_color.PrimaryColor1,),
                    border: OutlineInputBorder(

                    )
                  ),
                ),
              ),
              ListView.builder(
                padding: EdgeInsets.only(top: 20),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 20),
                     height: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 15,),
                        Row(
                          children: [
                            SizedBox(width: 15,),
                            Image.asset(imagename[index]),
                            SizedBox(width: 15,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(arrname[index],),
                                Text(arrname1[index],style: TextStyle(fontSize: 12),),
                                Row(
                                  children: [
                                    Icon(Icons.location_on_outlined,color: app_color.PrimaryColor1,),
                                    Text('500m'),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  );

              },
              ),
          ],
          ),
        ),
      ),
    );
  }
}
var imagename=['assets/atm1.png','assets/atm2.png','assets/atm3.png','assets/atm1.png','assets/atm2.png','assets/atm3.png',];
var arrname=['Banco Santander ATM','CaixaBank ATM','Unicaja Banco ATM','Banco Santander ATM','CaixaBank ATM','Unicaja Banco ATM'];
var arrname1=['06210, Extremadura, Almendralejo, Spain','87823, Julius Mountain, Spain','06210, Extremadura, Almendralejo, Spain',
'06210, Extremadura, Almendralejo, Spain','87823, Julius Mountain, Spain','06210, Extremadura, Almendralejo, Spain'];