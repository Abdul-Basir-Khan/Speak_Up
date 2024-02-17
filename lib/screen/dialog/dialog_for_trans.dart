import 'dart:ui';


import 'package:flutter/material.dart';

import '../../themes/color.dart';
import '../../wedgits/reusable_text.dart';

class DialogForTrans extends StatelessWidget {
  final VoidCallback onTap;
  const DialogForTrans({Key? key, required this.onTap,}) : super(key: key);



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

                const SizedBox(
                  height: 15,
                ),
                const ReusableText(
                  title:
                  'Note:\n\nYou will learn new words through the use of word\'s translations.',

                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context); },
                      child: const ReusableText(
                        title: 'Decline',
                      ),
                    ),
                    const SizedBox(
                      width: 35,
                    ),
                    InkWell(
                      onTap: onTap,
                      child: const ReusableText(
                        title: 'Accept',
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      );
  }
}