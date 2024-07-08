import 'package:flutter/material.dart';
import 'package:huslak/app_color.dart';
class choose_city extends StatefulWidget {
  const choose_city({super.key});

  @override
  State<choose_city> createState() => _choose_cityState();
}

class _choose_cityState extends State<choose_city> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Center(child: Text("Choose your city",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Container(
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText:'Search for city',
                      prefixIcon: Icon(Icons.search,color: app_color.PrimaryColor1,),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),

                      )
                    ),
                  ),
                ),
              ),
        // SizedBox(height: 10,),
        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount:12 ,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            mainAxisExtent: 180,

          ),

          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color:Colors.white,
              ),
              // child: Column(
              //   children: [
                child:  Stack(children:[ Image.asset(imagename[index]),
                  Padding(
                    padding: const EdgeInsets.only(top: 120,left: 30),
                    child: Text(arrname[index],style: TextStyle(color: Colors.white),),
                  )
                  ]
                  ),
              //   ],
              // ),
            );
          },
        ),
         ]
         ),
        ),
      ),
    );
  }
}
var imagename=['assets/barsilona.png','assets/brussles.jpg','assets/cape toun.png','assets/Copenhagen.png','assets/Helsinki.png',
'assets/lisbon.png','assets/barsilona.png','assets/brussles.jpg','assets/cape toun.png','assets/Copenhagen.png','assets/Helsinki.png',
  'assets/lisbon.png'];
var arrname=['Barcelona','Brussels','Cape town','Copenhagen','Helsinki','Lisbon',
  'Barcelona','Brussels','Cape town','Copenhagen','Helsinki','Lisbon'];