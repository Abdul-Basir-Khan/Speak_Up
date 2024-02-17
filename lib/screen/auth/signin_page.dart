import 'package:flutter/material.dart';
import 'package:speakup/screen/auth/signup_screen.dart';
import '../../../wedgits/reusable_text.dart';
import '../../themes/color.dart';
import '../conversation_screen.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    final orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      backgroundColor: AppColor.scafoldBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: ListView(
          children: [
            const SizedBox(
              height: 30,
            ),
            const ReusableText(
                title: 'SIGN IN!',
                color: Color(0xFF000000),
                size: 24,
                weight: FontWeight.w700),
            const ReusableText(
                title: 'Enter your email to continue',
                color: Color(0xFF000000),
                size: 16,
                weight: FontWeight.w400),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    height: MediaQuery.sizeOf(context).height*0.40,
                    width: MediaQuery.sizeOf(context).width*1,
                    decoration: BoxDecoration(
                        color: AppColor.buttonColor,
                        borderRadius: BorderRadius.circular(15),

                    ),
                    child: Image(
                        height: MediaQuery.sizeOf(context).height*0.10,
                        width: MediaQuery.sizeOf(context).width*0.30,
                        image: const AssetImage(
                          'assets/icons/Untitled design (1) 1.png',
                        ),
                        fit:orientation==Orientation.portrait?BoxFit.cover: BoxFit.fitHeight),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Form(
              key: _formKey,
              child:

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Email Address',
                      filled: true,fillColor: AppColor.whiteColor,
                      hintStyle: const TextStyle(
                        color: AppColor.hintIconColor,
                        fontWeight: FontWeight.w400,
                      ),
                      border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none
                      ),
                        focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none
                    )
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'This Field Is Required';
                      }
                      return null; // Return null for no validation errors
                    },
                  ),
                  const SizedBox(height: 10,),
                  TextFormField(
                    controller: passwordController,
                    decoration:InputDecoration(
                      hintText: 'Password',
                      filled: true,fillColor: AppColor.whiteColor,
                      hintStyle: const TextStyle(
                        color: AppColor.hintIconColor,
                        fontWeight: FontWeight.w400,
                      ),
                      border:   OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none
                  ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none
                ),focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none
            )
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'This Field Is Required';
                      }
                      return null; // Return null for no validation errors
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const ReusableText(
                title: 'Forgot Password?',
                color: Color(0xFF000000),
                size: 16,
                weight: FontWeight.w400),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) =>
                      const ConversationScreen(),
                    ),
                  );

                }
               else{
                 print("Error");
                }
              },
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: AppColor.buttonColor,
                  ),
                  height: 50,
                  width: double.infinity,
                  child: const Center(
                    child: Text(
                      "Sign in",
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account?",
                  style: TextStyle(color: AppColor.buttonColor, fontSize: 16),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => const SignupPage(),
                      ),
                    );
                  },
                  child: const Text(
                    " Sign up",
                    style: TextStyle(
                        color: AppColor.buttonColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 16),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
