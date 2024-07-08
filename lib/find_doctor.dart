import 'package:flutter/material.dart';
import 'package:huslak/app_color.dart';
class find_doctor extends StatefulWidget {
  const find_doctor({super.key});

  @override
  State<find_doctor> createState() => _find_doctorState();
}

class _find_doctorState extends State<find_doctor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: app_color.PrimaryColor1,
      appBar: AppBar(
        backgroundColor: app_color.PrimaryColor1,
        title: Text('Find Doctor',style: TextStyle(fontSize: 18),),
        leading: Icon(Icons.arrow_back),
        titleSpacing: -6,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.all(5),
                  hintText: 'Search for specialist',
                  // labelText: 'Search for specialist',
                  prefixIcon: Icon(Icons.search,color: app_color.PrimaryColor1,),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )
                ),
              ),
              SizedBox(height: 40,),
              ListView.builder(
                itemCount: 5,
               shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (context, index) {
                return Container(
                  // height: 100,
                  margin: EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset(imagename[index],height: 120,),
                          SizedBox(width: 30,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(arrname[index],style: TextStyle(fontSize: 18),),
                              SizedBox(height: 8,),
                              Text(arrname1[index]),
                              SizedBox(height: 8,),
                              Row(
                                children: [
                                  Icon(Icons.star,color: Colors.yellow,),
                                  Icon(Icons.star,color: Colors.yellow,),
                                  Icon(Icons.star,color: Colors.yellow,),
                                  Icon(Icons.star,color: Colors.yellow,),
                                  Icon(Icons.star,color: Colors.yellow,),
                                  Text('15 Opinions'),
                                ],
                              ),
                              SizedBox(height:8,),
                              Text('€5.50',style: TextStyle(color: app_color.PrimaryColor1,fontSize: 16),)
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
var imagename=['assets/dr.png','assets/dr1.png','assets/dr2.png','assets/dr.png','assets/dr1.png',];
var arrname=['Dr Jamie Trevelyan','Dr Derrick Milton','Dr Alva Evans','Dr Vivian Reynolds','Dr Derrick Milton'];
var arrname1=['Cardiologists','Orthopedics','Podiatrists','Cardiologist','Orthopedics'];
