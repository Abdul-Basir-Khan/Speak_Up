import 'dart:async';

import 'package:flutter/material.dart';
import '../../../wedgits/reusable_text.dart';
import '../../themes/color.dart';
import 'addProfile_page.dart';

class verifyEmailPage extends StatefulWidget {
  const verifyEmailPage({Key? key}) : super(key: key);

  @override
  State<verifyEmailPage> createState() => _verifyEmailPageState();
}

class _verifyEmailPageState extends State<verifyEmailPage> {

  int timerT = 30;


  void startTimer() {
    const oneSec = Duration(seconds: 1);
    Timer.periodic(oneSec, (Timer timer) {
      if (timer.tick == 30) {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> addProfilePage()));
        timer.cancel();
      } else if(timer.tick <= 30) {
        setState(() {
          timerT = 30 - timer.tick;
        });
      }
      else{

      }
    });
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.scafoldBackgroundColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              const ReusableText(
                  title: 'VERIFY EMAIL',
                  color: Color(0xFF000000),
                  size: 24,
                  weight: FontWeight.w700),
              const SizedBox(
                height: 15,
              ),
              const ReusableText(
                  title:
                  'We’ve sent  you a link to verify your Email Address. Please check your email.',
                  color: Color(0xFF000000),
                  size: 16,
                  weight: FontWeight.w400),
              const SizedBox(
                height: 20,
              ),
              const ReusableText(
                  title:
                  'In case you don’t find the link in your inbox. Kindly check your spam folder',
                  color: Color(0xFF000000),
                  size: 16,
                  weight: FontWeight.w400),
              const SizedBox(
                height: 35,
              ),
              ReusableText(
                title: 'Didn’t get the link? Resend in $timerT seconds',
                color:AppColor.purpleTextColor,
                size: 16,
                weight: FontWeight.w400,
                fontStyle: FontStyle.italic,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
