import 'dart:ui';


import 'package:flutter/material.dart';

import '../../themes/color.dart';
import '../../wedgits/reusable_text.dart';
import '../personalDetails_screen.dart';

class DialogForRequiredField extends StatelessWidget {

  const DialogForRequiredField({Key? key,}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return

      BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Dialog(
          backgroundColor: AppColor.scafoldBackgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [

                SizedBox(
                  height: 15,
                ),
                ReusableText(
                  title:
                  'This Field is Required',

                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      );
  }
}