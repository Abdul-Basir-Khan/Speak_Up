import 'dart:ui';


import 'package:flutter/material.dart';

import '../../themes/color.dart';
import '../../wedgits/reusable_text.dart';

class DialogForTerms extends StatelessWidget {

  const DialogForTerms({Key? key,}) : super(key: key);



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
                  'Please, confirm that you agree to our Terms and condition',

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