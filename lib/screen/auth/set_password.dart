import 'package:flutter/material.dart';
import 'package:speakup/screen/auth/verifyEmail_page.dart';
import '../../../wedgits/reusable_text.dart';
import '../../themes/color.dart';
import 'addProfile_page.dart';

class setPasswordPage extends StatefulWidget {
  const setPasswordPage({Key? key}) : super(key: key);

  @override
  State<setPasswordPage> createState() => _setPasswordPageState();
}

class _setPasswordPageState extends State<setPasswordPage> {
  final TextEditingController confirmPasswordController =
  TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool pass = true;
  bool passOne = true;

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
                  title: 'SET YOUR PASSWORD',
                  color: Color(0xFF000000),
                  size: 24,
                  weight: FontWeight.w700),
              const SizedBox(
                height: 15,
              ),
              const ReusableText(
                  title: 'Kindly enter and confirm your password to continue',
                  color: Color(0xFF000000),
                  size: 16,
                  weight: FontWeight.w400),
              const SizedBox(
                height: 20,
              ),
             Form(
                 key: _formKey,
                 child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  TextFormField(
                                    controller: passwordController,
                                    obscureText: pass,

                                    decoration:  InputDecoration(
                                        filled: true,fillColor: AppColor.whiteColor,
                                        hintText:  "Password",
                                        suffixIcon:   InkWell(
                                          onTap: (){
                                            setState(() {
                                              pass = !pass;
                                            });
                                          },
                                          child: Icon(
                                            pass ?Icons.visibility_off: Icons.visibility ,
                                            color: AppColor.blackColor,
                                          ),
                                        ),

                                        hintStyle: const TextStyle(
                                            color: AppColor.hintIconColor,
                                            fontWeight: FontWeight.w400),
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


                                const SizedBox(
                 height: 10,
                                ),

                                  TextFormField(
                                    controller: confirmPasswordController,
                                    obscureText: passOne,

                                    decoration:  InputDecoration(
                                        filled: true,fillColor: AppColor.whiteColor,
                                        hintText:  " Confirm Password",
                                        suffixIcon:   InkWell(
                                          onTap: (){
                                            setState(() {
                                              passOne = !passOne;
                                            });
                                          },
                                          child: Icon(
                                            passOne ?Icons.visibility_off: Icons.visibility ,
                                            color: AppColor.blackColor,
                                          ),
                                        ),

                                        hintStyle: const TextStyle(
                                            color: AppColor.hintIconColor,
                                            fontWeight: FontWeight.w400),
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
                              ],)),


              const Expanded(
                  child: SizedBox(
                    height: 5,
                  )),

              GestureDetector(
                onTap: () {


                  if (_formKey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) =>
                        const verifyEmailPage(),
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
                        "Continue",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                      ),
                    )),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
