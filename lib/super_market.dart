import 'package:flutter/material.dart';
import 'package:huslak/app_color.dart';
class super_market extends StatefulWidget {
  const super_market({super.key});

  @override
  State<super_market> createState() => _super_marketState();
}

class _super_marketState extends State<super_market> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: app_color.PrimaryColor1,
      appBar: AppBar(
        title: Text('Super Market'),
        leading: Icon(Icons.arrow_back),
        titleSpacing: -6,
        backgroundColor: app_color.PrimaryColor1,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18),
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
                    contentPadding: EdgeInsets.all(10),
                    hintText: 'Search for super market',
                    prefixIcon: Icon(Icons.search,color: app_color.PrimaryColor1,),
                    border: OutlineInputBorder(
                      // borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                ),
              ),
              ListView.builder(
                padding: EdgeInsets.only(top: 20),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 6,
                itemBuilder: (context, index)
                {
                  return Container(
                    margin: EdgeInsets.only(top: 25),
                    height: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            SizedBox(width: 20,),
                            Image.asset(imagename[index]),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(width: 20,),
                                Text(arrname[index]),
                                Text(arrname1[index]),
                                Row(
                                  children: [
                                    Icon(Icons.location_on_outlined,color: app_color.PrimaryColor1,),
                                    Text('900 mtr')
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
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
var imagename=['assets/market.png','assets/market1.png','assets/market2.png','assets/market.png','assets/market1.png'
,'assets/market2.png'];
var arrname=['Family Market','Big Basket','D Mart','Family Market','Big Basket','D Mart'];
var arrname1=['06210, Extremadura, Almendralejo, Spain','87823, Julius Mountain, Spain','06210, Extremadura, Almendralejo, Spain',
  '06210, Extremadura, Almendralejo, Spain','87823, Julius Mountain, Spain','06210, Extremadura, Almendralejo, Spain',];
