import 'dart:ui';


import 'package:flutter/material.dart';

import '../../themes/color.dart';
import '../../wedgits/reusable_text.dart';
import '../personalDetails_screen.dart';

class DialogForAll extends StatelessWidget {
  final String? name;
  const DialogForAll({Key? key, this.name,}) : super(key: key);



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
                'Are you sure you want to change $name ? '
                    '\n\nClick "Save" to proceed or "Discard" to go back',

              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>  const personalDetailsPage()));
                    },
                    child: const ReusableText(
                      title: 'Discard',
                    ),
                  ),
                  const SizedBox(
                    width: 35,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>  const personalDetailsPage()));
                    },
                    child: const ReusableText(
                      title: 'Save',
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