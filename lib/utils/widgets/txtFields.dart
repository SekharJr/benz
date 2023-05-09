import 'package:flutter/material.dart';

import '../Constants/constantsForClones.dart';


class edttravlon extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hinttext;

  const edttravlon({
    Key? key,
    required this.textEditingController,
    required this.hinttext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey.shade400,
        hintText: hinttext,
        hintStyle: Constants().Regularstylewhite(14),
        enabledBorder: OutlineInputBorder(
          borderRadius: Constants().radiusreturning(),
          borderSide: BorderSide(
            color: Colors.grey.shade400,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: Constants().radiusreturning(),
          borderSide: BorderSide(
            color: Colors.grey.shade400,
          ),
        ),
      ),
    );
  }
}
