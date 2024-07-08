import 'package:flutter/material.dart';
import 'package:huslak/app_color.dart';
class choose_hospital extends StatefulWidget {
  const choose_hospital({super.key});

  @override
  State<choose_hospital> createState() => _choose_hospitalState();
}

class _choose_hospitalState extends State<choose_hospital> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: app_color.PrimaryColor1,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            children: [
              Center(child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Text('Choose Hospital',style: TextStyle(fontSize: 18),),
              )
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search,color: app_color.PrimaryColor1,),
                      hintText: 'Search for hospital',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )
                    ),
                  ),
                ),
              ),
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
                      borderRadius: BorderRadius.circular(8),
                      color:Colors.white,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Stack(children:[ Image.asset(imagename[index]),
                            Padding(
                              padding: const EdgeInsets.only(top: 140,left: 70),
                              child: Text('Details',style: TextStyle(color: app_color.PrimaryColor1),),
                            )
                          ]
                          ),
                        )
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
var imagename=['assets/sjd.png','assets/hebron.png','assets/sjd.png','assets/hebron.png','assets/sjd.png','assets/hebron.png',
    'assets/sjd.png','assets/hebron.png','assets/sjd.png','assets/hebron.png','assets/sjd.png','assets/hebron.png'];
