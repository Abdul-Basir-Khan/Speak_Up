import 'package:flutter/material.dart';
import 'package:speakup/screen/auth/signin_page.dart';
import 'package:speakup/screen/auth/signup_screen.dart';
import '../../themes/color.dart';
import '../../wedgits/reusable_text.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      backgroundColor: AppColor.scafoldBackgroundColor,
      body: SizedBox(
        height: MediaQuery.sizeOf(context).height * 1,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: ListView(
            children: [
              const SizedBox(
                height: 30,
              ),
              const ReusableText(
                  title: 'SPEAK UP!',
                  color: Color(0xFF000000),
                  size: 24,
                  weight: FontWeight.w700),
              const ReusableText(
                  title: 'Practice Foreign Languages Effectively',
                  color: Color(0xFF000000),
                  size: 16,
                  weight: FontWeight.w400),
              const SizedBox(
                height: 35,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(16)),
                    child: Container(
                      height: 160,
                      width: MediaQuery.sizeOf(context).width * 0.44,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        color: AppColor.buttonColor,
                      ),
                      child: Image.asset(
                        fit:orientation==Orientation.portrait?BoxFit.cover: BoxFit.fitHeight,
                        'assets/icons/Untitled design (1) 1.png',
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(16)),
                    child: Container(
                      height: 160,
                      width: MediaQuery.sizeOf(context).width * 0.44,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        color: Color(0xff1CFF00),
                      ),
                      child: Image.asset(
                        fit: BoxFit.fitHeight,
                        'assets/images/man1.png',
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(16)),
                    child: Container(
                      height: 160,
                      width: MediaQuery.sizeOf(context).width * 0.44,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        color: Colors.transparent,
                      ),
                      child: Image.asset(
                        fit: BoxFit.cover,
                        'assets/images/manr.png',
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(16)),
                    child: Container(
                      height: 160,
                      width: MediaQuery.sizeOf(context).width * 0.44,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        color: Color(0xffF9E813),
                      ),
                      child: Image.asset(
                        fit: BoxFit.fitHeight,
                        'assets/images/woman3.webp',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignInPage()));
                },
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: AppColor.buttonColor,
                    ),
                    height: 50,
                    width: MediaQuery.sizeOf(context).width * 1,
                    child: const Center(
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                      ),
                    )),
              ),
              const SizedBox(
                height: 5,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) =>
                      const SignupPage(),
                    ),
                  );
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style:
                          TextStyle(color: AppColor.buttonColor, fontSize: 16),
                    ),
                    Text(
                      " Sign up",
                      style: TextStyle(
                          color: AppColor.buttonColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
