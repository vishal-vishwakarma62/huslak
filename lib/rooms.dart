import 'package:flutter/material.dart';
import 'package:huslak/app_color.dart';
class rooms extends StatefulWidget {
  const rooms({super.key});

  @override
  State<rooms> createState() => _roomsState();
}

class _roomsState extends State<rooms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: app_color.PrimaryColor1,
      appBar: AppBar(
        backgroundColor: app_color.PrimaryColor1,
        title: Text('Rooms'),
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
                      hintText: 'Search for room',
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
