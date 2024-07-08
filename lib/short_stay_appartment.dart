import 'package:flutter/material.dart';
import 'package:huslak/app_color.dart';
class short_stay_appartment extends StatefulWidget {
  const short_stay_appartment({super.key});

  @override
  State<short_stay_appartment> createState() => _short_stay_appartmentState();
}

class _short_stay_appartmentState extends State<short_stay_appartment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: app_color.PrimaryColor1,
      appBar: AppBar(
        backgroundColor: app_color.PrimaryColor1,
        title: Text('Short stay apartments'),
        leading: Icon(Icons.arrow_back),
        titleSpacing: -6,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  color: Colors.white
                ),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    hintText: 'Search for apartment',
                    prefixIcon: Icon(Icons.search,color: app_color.PrimaryColor1,),
                    border: OutlineInputBorder(
                    )
                  ),
                ),
              ),
              ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white
                      ),
                      child: Row(
                        children: [
                          Image.asset('assets/cozy.png',height: 120,),
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Cozy Nest Apartments'),
                                Text('07529, Balearic Islands, barcelona Spain',style: TextStyle(fontSize: 12),),
                                Text('€25.00/d',style: TextStyle(color: app_color.PrimaryColor1),),
                                Text('Furnished',style: TextStyle(fontSize: 12),)
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
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white
                      ),
                      child: Row(
                        children: [
                          Image.asset('assets/welcome.png',height: 120,),
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Luxe Living Apartments'),
                                Text('14830, La Rioja, barcelona Spain',style: TextStyle(fontSize: 12),),
                                Text('€25.00/d',style: TextStyle(color: app_color.PrimaryColor1),),
                                Text('UnFurnished',style: TextStyle(fontSize: 12),)
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
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white
                      ),
                      child: Row(
                        children: [
                          Image.asset('assets/luxe.png',height: 120,),
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Luxe Living Apartments'),
                                Text('2000, Guipúzcoa, barcelona Spain',style: TextStyle(fontSize: 12),),
                                Text('€25.00/d',style: TextStyle(color: app_color.PrimaryColor1),),
                                Text('semi-Furnished',style: TextStyle(fontSize: 12),)
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
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white
                      ),
                      child: Row(
                        children: [
                          Image.asset('assets/relaxing.png',height: 120,),
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Relaxing Apartments'),
                                Text('13193, Ciudad Real, barcelona Spain',style: TextStyle(fontSize: 12),),
                                Text('€25.00/d',style: TextStyle(color: app_color.PrimaryColor1),),
                                Text('Unfurnished',style: TextStyle(fontSize: 12),)
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
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white
                      ),
                      child: Row(
                        children: [
                          Image.asset('assets/cozy.png',height: 120,),
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Cozy Nest Apartments'),
                                Text('07529, Balearic Islands, barcelona Spain',style: TextStyle(fontSize: 12),),
                                Text('€25.00/d',style: TextStyle(color: app_color.PrimaryColor1),),
                                Text('Furnished')
                              ],
                            ),
                          ),
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
