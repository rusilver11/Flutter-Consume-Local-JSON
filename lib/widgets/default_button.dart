import 'package:flutter/material.dart';
import 'package:monster_group/utils/constant.dart';
import 'package:monster_group/utils/extension.dart';
import 'package:monster_group/utils/size_config.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.text,
    required this.press,
    }) : super(key: key);
  
  final String? text;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 8.0.hp,
      child: TextButton(
        style: TextButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            primary: Colors.white,
            backgroundColor: kSaffron),
        onPressed: press as void Function(), //press
        child: Text(
          text!,
          style: TextStyle(
            fontSize: 14.0.sp,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
