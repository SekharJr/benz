
import 'package:benzguide/utils/widgets/txtForClones.dart';
import 'package:flutter/material.dart';

import '../Constants/constantsForClones.dart';

class crdForStr extends StatelessWidget {
  final String imageone;
  final String imagetwo;
  final String txtone;
  final String txttwo;
  final String textthree;

  const crdForStr(
      {Key? key,
      required this.txtone,
      required this.txttwo,
      required this.textthree,
      required this.imageone,
      required this.imagetwo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
       margin: EdgeInsets.only(left: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10),),

      ),
      child: Container(
        height: 180,
        width: 200,

        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          color: Colors.black,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                height: 120,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      imageone,
                      fit: BoxFit.cover,
                    ))),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      imagetwo,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    txtOftravalon(
                        data: txtone,
                        textStyle: Constants().Regularstylewhite(14)),
                    txtOftravalon(
                        data: txttwo,
                        textStyle: Constants().Regularstylewhite(12)),
                    txtOftravalon(
                        data: textthree,
                        textStyle: Constants().Regularstylewhite(12)),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
