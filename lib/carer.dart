import 'package:flutter/material.dart';
import 'package:huslak/app_color.dart';
class carer extends StatefulWidget {
  const carer({super.key});

  @override
  State<carer> createState() => _carerState();
}

class _carerState extends State<carer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carer', style: TextStyle(fontSize: 18),),
        leading: Icon(Icons.arrow_back),
        titleSpacing: -6,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 20,
                  mainAxisExtent: 240,
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,

                ),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(imagename[index], fit: BoxFit.cover,),
                        // Image.asset(imagename[index],fit: BoxFit.cover,),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(width: 10,),
                              Text(arrname[index]),
                              Text('€4.00/h', style: TextStyle(fontSize: 16,
                                  color: app_color.PrimaryColor1)),
                              Text('Known Languages',
                                style: TextStyle(color: Colors.black54),),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  Image.asset('assets/c1.png'),
                                  Image.asset('assets/c2.png'),
                                  Image.asset('assets/c3.png'),
                                  Image.asset('assets/c4.png'),
                                  Image.asset('assets/c5.png'),
                                ],
                              ),
                            ],
                          ),
                        ),

                      ],
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
var imagename=['assets/f1.png','assets/f2.png','assets/f3.png','assets/f4.png','assets/f5.png','assets/f6.png',];
var arrname=['Bernice Houston','Suzanne Patience','Deirdre Bessie','Janet Timothy','Virginia Jonathan','Norma Sophy'];
