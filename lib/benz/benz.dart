import 'package:flutter/material.dart';



import '../utils/Constants/constantsForClones.dart';
import '../utils/widgets/txtForClones.dart';

class benz extends StatefulWidget {
  const benz({Key? key}) : super(key: key);

  @override
  State<benz> createState() => _benzState();
}

class _benzState extends State<benz> {
  String dropdownValue = 'A-Class';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.black,
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .4,
              width: MediaQuery.of(context).size.width,
              color: Colors.black,
              child: Image.asset(
                "assets/images/log.jpg",
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                  height: MediaQuery.of(context).size.height * .6,
                  decoration: Constants().decor1(),
                  child: ListView(
                    scrollDirection: Axis.vertical,
                 children: [
                   Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [

                       txtOftravalon(data: "Select Your Dream Car Here ", textStyle: Constants().mediumstyleblack(24)),
                       SizedBox(
                         height: 20,
                       ),

                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           DropdownButton(
                             value: dropdownValue,
                             items: [
                               'A-Class',
                               'E-Class',
                               'C-Class',
                               'S-Class',
                               'GLA',
                               'GLB',
                               'GLE',
                               'GLC',
                               'GLS'
                             ].map<DropdownMenuItem<String>>((String value) {
                               return DropdownMenuItem(
                                   value: value,
                                   child: txtOftravalon(
                                     data: value,
                                     textStyle: Constants().boldstyleblack(20),
                                   ));
                             }).toList(),
                             onChanged: (String? newValue) {
                               setState(() {
                                 dropdownValue = newValue!;
                               });
                             },
                           ),
                         ],
                       ),
                       Container(
                         height:400 ,
                         width: 400,
                         child: ListView.builder(
                             scrollDirection: Axis.horizontal,
                             itemCount: Constants().carimg.length,
                             itemBuilder: (context,index){
                               return Stack(
                                 children: [
                                   Card(
                                     shape: RoundedRectangleBorder(
                                         borderRadius: Constants().radiusreturning()
                                     ),
                                     child: Container(
                                       height: 400,
                                       width: 400,
                                       decoration: BoxDecoration(
                                           borderRadius:Constants().radiusreturning()
                                       ),
                                       child: ClipRRect(
                                           borderRadius: BorderRadius.circular(20),
                                           child: Image.asset(Constants().carimg[index].toString(),
                                             fit: BoxFit.cover,
                                           )),
                                     ),
                                   ),
                                   Positioned(
                                       bottom: 70,
                                        left: 20,

                                       child: txtOftravalon(data: "Mercedec-Benz A-Class", textStyle: Constants().mediumstylewhite(32))),
                                   Positioned(
                                     right: 20,
                                        left: 20,
                                       top: 18,


                                       child: Row(
                                         mainAxisAlignment: MainAxisAlignment.start,
                                         children: [
                                           txtOftravalon(data: "4.9", textStyle:Constants().Regularstylewhite(24) ),

                                           Icon(
                                             Icons.star,
                                             color: Colors.yellow,
                                             size: 24,
                                           ),
                                           SizedBox(
                                             width: 280,
                                           ),
                                           Icon(
                                             Icons.favorite,
                                             color: Colors.red,
                                             size: 24,
                                           ),
                                         ],
                                       )),


                                        Positioned(
                                            bottom: 30,
                                            left: 20,

                                            child: Row(
                                              children: [
                                                Icon(Icons.center_focus_strong,color: Colors.white,),
                                                txtOftravalon(data: "571 hp", textStyle: Constants().Regularstylewhite(24)),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                Icon(Icons.timelapse_rounded,color: Colors.white,),
                                                txtOftravalon(data: "5.2 Sec", textStyle: Constants().Regularstylewhite(24)),
                                                SizedBox(
                                                  width: 40,
                                                ),
                                                Icon(Icons.currency_rupee,color: Colors.white,),
                                                txtOftravalon(data: "42.0 lakh", textStyle: Constants().Regularstylewhite(24)),


                                              ],
                                            ))],


                               );
                             }),
                       )
                     ],
                   ),
                 ],
                  )),
            ),
            Positioned(
                top: 40,
                left: 16,

                child: txtOftravalon(data: "BRING THE", textStyle:Constants().blackboldstyle(50))),
            Positioned
              (
              top: 80,
                left: 16,
                child: txtOftravalon(data: "BEAST INSIDE.", textStyle:Constants().blackboldstyle(50))
            )
          ],
        ),
      ),
    );
  }
}
