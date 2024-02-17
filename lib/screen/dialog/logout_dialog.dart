import 'dart:ui';


import 'package:flutter/material.dart';

import '../../themes/color.dart';
import '../../wedgits/reusable_text.dart';
import '../auth/signin_page.dart';

class DialogForLogout extends StatelessWidget {

  const DialogForLogout({Key? key,}) : super(key: key);



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
                ReusableText(
                  title:
                  'Are you sure you want to Sign Out? '
                      '\n\nClick "Yes" to proceed or "Cancel" to stay on the page',

                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                     Navigator.pop(context); },
                      child: const ReusableText(
                        title: 'Cancel',
                      ),
                    ),
                    const SizedBox(
                      width: 35,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>  SignInPage()));
                      },
                      child: const ReusableText(
                        title: 'Yes',
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