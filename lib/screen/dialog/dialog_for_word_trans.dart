import 'dart:ui';


import 'package:flutter/material.dart';

import '../../themes/color.dart';
import '../../wedgits/reusable_text.dart';
import '../personalDetails_screen.dart';

class DialogForWordTrans extends StatelessWidget {

  const DialogForWordTrans({Key? key,}) : super(key: key);



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
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColor.whiteColor
                      ),
                      child: const Center(
                        child: ReusableText(
                          title:
                          'Text',color: AppColor.blackColor,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColor.whiteColor
                      ),
                      child: const Center(
                        child: ReusableText(
                          title:
                          'Word',color: AppColor.blackColor,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const ReusableText(
                  title:
                  'Trans of word',
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      );
  }
}