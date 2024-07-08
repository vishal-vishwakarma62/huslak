import 'package:flutter/material.dart';
import 'package:huslak/app_color.dart';
class gold_box extends StatefulWidget {
  const gold_box({super.key});

  @override
  State<gold_box> createState() => _gold_boxState();
}

class _gold_boxState extends State<gold_box> {
  final List<int> selectedIndex = [];
  final List<String> arrname = [
    'Car Rental',
    'Hotels',
    'Sort term Apartments',
    'Flights',
    'Restaurants',
    'Pharmacies',
    'ATM',
    'Super Market',
    'Find Doctor'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gold Box'),
        leading: Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Gold box charge €10 per service.',style: TextStyle(color: app_color.PrimaryColor1,fontSize: 16),),
              SizedBox(height: 30,),
              Text('Name',style: TextStyle(fontSize: 16),),
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  hintText: 'Enter your name',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  )
                ),
              ),
              SizedBox(height: 30,),
              Text('Phone Number',style: TextStyle(fontSize: 16),),
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Enter your number',
                  //   labelText: 'Helo',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                  )
                ),
              ),
              SizedBox(height: 30,),
              Text('Email Id',style: TextStyle(fontSize: 16),),
              TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Enter your email id',
                    //   labelText: 'Helo',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)
                    )
                ),
              ),
              SizedBox(height: 30,),
              Text('All Services',style: TextStyle(fontSize: 16),),
              GridView.builder(
                shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),

                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                  mainAxisSpacing: 20,
                    mainAxisExtent: 60,

                  ),
                itemCount:9 ,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: (){
                      setState(() {
    if(selectedIndex.contains(index)){
    selectedIndex.remove(index);
                      }else{
      selectedIndex.remove(index);
    }
             }


             );},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: app_color.PrimaryColor1
                      ),
                      child: Column(
                        children: [
                          Center(child: Text(arrname[index]))
                        ],
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
