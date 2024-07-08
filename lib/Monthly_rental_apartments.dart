import 'package:flutter/material.dart';
import 'package:huslak/app_color.dart';
class Monthly_rental_apartments extends StatefulWidget {
  const Monthly_rental_apartments({super.key});

  @override
  State<Monthly_rental_apartments> createState() => _Monthly_rental_apartmentsState();
}

class _Monthly_rental_apartmentsState extends State<Monthly_rental_apartments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: app_color.PrimaryColor1,
      appBar: AppBar(
        backgroundColor: app_color.PrimaryColor1,
       title: Text('Monthly rental apartments'),
        leading: Icon(Icons.arrow_back),
        titleSpacing: -6,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  // height: 50,
                  // width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(12),
                      prefixIcon: Icon(Icons.search,color: app_color.PrimaryColor1,),
                      hintText: 'Search for apartment',
                      border: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(10),

                      ),

                    ),
                  ),
                ),
              ),
              ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white
                      ),
                      child: Row(
                        children: [
                          Image.asset('assets/town.png',height: 120,),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Town Place Apartments'),
                                Text('07529, Balearic Islands, barcelona Spain',style: TextStyle(fontSize: 12),),
                                Text('€75.00/m',style: TextStyle(color: app_color.PrimaryColor1),),
                                Text('Furnished',style: TextStyle(fontSize: 12),)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white
                      ),
                      child: Row(
                        children: [
                          Image.asset('assets/vertex.png',height: 120,),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('The Palm Springs Apartments'),
                                Text('14830, La Rioja, barcelona Spain',style: TextStyle(fontSize: 12),),
                                Text('€35.00/m',style: TextStyle(color: app_color.PrimaryColor1),),
                                Text('Unfurnished',style: TextStyle(fontSize: 12),)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white
                      ),
                      child: Row(
                        children: [
                          Image.asset('assets/luxury.png',height: 120,),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Town Place Apartments'),
                                Text('07529, Balearic Islands, barcelona Spain',style: TextStyle(fontSize: 12),),
                                Text('€75.00/m',style: TextStyle(color: app_color.PrimaryColor1),),
                                Text('semi-Furnished',style: TextStyle(fontSize: 12),)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white
                      ),
                      child: Row(
                        children: [
                          Image.asset('assets/vertex.png',height: 120,),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Town Place Apartments'),
                                Text('07529, Balearic Islands, barcelona Spain',style: TextStyle(fontSize: 12),),
                                Text('€75.00/m',style: TextStyle(color: app_color.PrimaryColor1),),
                                Text('UnFurnished',style: TextStyle(fontSize: 12),)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white
                      ),
                      child: Row(
                        children: [
                          Image.asset('assets/town.png',height: 120,),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Town Place Apartments'),
                                Text('07529, Balearic Islands, barcelona Spain',style: TextStyle(fontSize: 12),),
                                Text('€75.00/m',style: TextStyle(color: app_color.PrimaryColor1),),
                                Text('Furnished',style: TextStyle(fontSize: 12),)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
