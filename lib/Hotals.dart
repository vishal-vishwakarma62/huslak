import 'package:flutter/material.dart';
import 'package:huslak/app_color.dart';
class Hotals extends StatefulWidget {
  const Hotals({super.key});

  @override
  State<Hotals> createState() => _HotalsState();
}

class _HotalsState extends State<Hotals> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(
              iconSize: 25,
              icon: const Icon(Icons.arrow_back,),
              onPressed: () {
                // ...
              },
            ),
            Text('Hotels'),
          ],
        ),
      ),
     backgroundColor: app_color.PrimaryColor1,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(

            children: [
              Container(
                // color: Colors.white,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)

                ),
                child: Row(
                  children: [
                    Image.asset('assets/h1.png',height: 120,),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('NH Collection Gran Hotel'),
                          Text('07529, Balearic Islands, barcelona Spain',style: TextStyle(fontSize: 12),),
                          Text('€40.00/d',style: TextStyle(color: app_color.PrimaryColor1,fontSize: 20),),
                          Text('500 mtr')
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Container(
                  // color: Colors.white,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)

                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/h2.png',height: 120,),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('NH Sants Barcelona'),
                            Text('07529, Balearic Islands, barcelona Spain',style: TextStyle(fontSize: 12),),
                            Text('€40.00/d',style: TextStyle(color: app_color.PrimaryColor1,fontSize: 20),),
                            Text('500 mtr')
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Container(
                  // color: Colors.white,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)

                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/h3.png',height: 120,),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('NH Collection Constanza'),
                            Text('07529, Balearic Islands, barcelona Spain',style: TextStyle(fontSize: 12),),
                            Text('€40.00/d',style: TextStyle(color: app_color.PrimaryColor1,fontSize: 20),),
                            Text('500 mtr')
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Container(
                  // color: Colors.white,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)

                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/h4.png',height: 120,),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('NH Collection Pódium'),
                            Text('07529, Balearic Islands, barcelona Spain',style: TextStyle(fontSize: 12),),
                            Text('€40.00/d',style: TextStyle(color: app_color.PrimaryColor1,fontSize: 20),),
                            Text('500 mtr')
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Container(
                  // color: Colors.white,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)

                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/h5.png',height: 120,),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Hotel Sofia Barcelona'),
                            Text('07529, Balearic Islands,barcelona Spain',style: TextStyle(fontSize: 12),),
                            Text('€40.00/d',style: TextStyle(color: app_color.PrimaryColor1,fontSize: 20),),
                            Text('500 mtr')
                          ],
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
