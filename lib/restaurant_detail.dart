import 'package:flutter/material.dart';
import 'package:huslak/app_color.dart';
class restaurant_detail extends StatefulWidget {
  const restaurant_detail({super.key});

  @override
  State<restaurant_detail> createState() => _restaurant_detailState();
}

class _restaurant_detailState extends State<restaurant_detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset('assets/gasa1.jpg'),
                Padding(
                  padding: const EdgeInsets.only(top: 50,left: 18),
                  child: CircleAvatar(
                    radius: 20,
                      child: Icon(Icons.arrow_back)),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Gasa Amalia',style: TextStyle(fontSize: 16),),
                      Text('15 mins',style: TextStyle(fontWeight:FontWeight.normal),)
                    ],
                  ),
                  Text('Concepcion Public Market, Barcelona, Spain'),
                  Padding(
                    padding: const EdgeInsets.only(top: 18),
                    child: Text(('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed\n '
                        'do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.')),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                    return Card(
                      elevation: 5,
                      child: Container(
                        // margin: EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(imagename[index]),
                                SizedBox(width: 16,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(arrname[index],style: TextStyle(fontSize: 16),),
                                    Text('Lorem ipsum dolor sit'),
                                    Text('€4.50',style: TextStyle(color: app_color.PrimaryColor1),)
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
var imagename=['assets/cremosa.png','assets/savoury.png','assets/mashroom.png','assets/brie.png','assets/cremosa.png',];
var arrname=['Cremosa de Txangurro','Savoury Macaron','Forest Mushroom Tart','Brie Walnut Ice Cream','Cremosa de Txangurro'];