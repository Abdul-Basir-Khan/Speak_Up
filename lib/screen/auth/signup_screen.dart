
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:speakup/screen/auth/privacy_screen.dart';
import 'package:speakup/screen/auth/set_password.dart';
import '../../../wedgits/reusable_text.dart';
import '../../themes/color.dart';
import '../dialog/policy_dialog.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneNoController = TextEditingController();
  String countryCode='Select';
  bool  value=false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return

      SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.scafoldBackgroundColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: ListView(
                  children: [
                    const ReusableText(
                        title: 'HELP US GET TO KNOW YOU!',
                        color: Color(0xFF000000),
                        size: 24,
                        weight: FontWeight.w700),
                    const SizedBox(
                      height: 30,
                    ),

                   Form(
                       key: _formKey,
                       child: Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,children: [

                         TextFormField(
                           controller: firstNameController,

                           decoration:  InputDecoration(
                               filled: true,fillColor: AppColor.whiteColor,
                               hintText: 'First Name',
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
                           controller: lastNameController,
                           validator: (value) {
                             if (value == null || value.isEmpty) {
                               return 'This Field Is Required';
                             }
                             return null; // Return null for no validation errors
                           },
                           decoration:  InputDecoration(
                               filled: true,fillColor: AppColor.whiteColor,
                               hintText: 'Last Name',
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
                         ),
                         const SizedBox(
                           height: 10,
                         ),
                         TextFormField(
                           controller: emailController,
                           validator: (value) {
                             if (value == null || value.isEmpty) {
                               return 'This Field Is Required';
                             }
                             return null; // Return null for no validation errors
                           },
                           keyboardType: TextInputType.emailAddress,
                           decoration: InputDecoration(
                               filled: true,fillColor: AppColor.whiteColor,
                               hintText: 'Email Address',
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
                         ),
                         const SizedBox(
                           height: 10,
                         ),
                         Row(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [

                             Container(
                                 padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 6),
                                 decoration: BoxDecoration(
                                   color: AppColor.whiteColor,
                                   borderRadius: BorderRadius.circular(20),
                                 ),

                                 child: Center(
                                   child:
                                   CountryCodePicker(
                                     onChanged: (CountryCode value){
                                       setState(() {
                                         countryCode=value.toString();
                                       });

                                     },
                                     showCountryOnly: false,
                                     showOnlyCountryWhenClosed: false,
                                     alignLeft: false,
                                   ),
                                 )
                             ),

                             const SizedBox(width: 15,),
                             Expanded(
                               child: TextFormField(
                                 controller: phoneNoController,
                                 keyboardType: TextInputType.number,
                                 validator: (value) {
                                   if (value == null || value.isEmpty) {
                                     return 'This Field Is Required';
                                   }
                                   return null; // Return null for no validation errors
                                 },
                                 decoration: InputDecoration(
                                     filled: true,fillColor: AppColor.whiteColor,
                                     hintText: 'Phone Number',
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
                               ),
                             ),
                           ],
                         ),
                       ],)),
                   const SizedBox(
                     height: 30,
                   ),
                   Row(
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       SizedBox(
                         height: 25,
                         width: 25,
                         child: Checkbox(
                           activeColor: AppColor.primaryColor,
                           side: const BorderSide(color: AppColor.blackColor),
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(4),
                           ),
                           value: value,
                           onChanged: (v) {
                             setState(() {
                               value = v!;
                             });
                           },
                         ),
                       ),
                       const SizedBox(
                         width: 7,
                       ),
                       InkWell(
                         onTap: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>const PrivacyScreen()));

                         },
                         child: RichText(
                           text: const TextSpan(
                               text: "I Agree with ",
                               style: TextStyle(
                                   fontWeight: FontWeight.w500,
                                   fontSize: 14,
                                   color: AppColor.blackColor),
                               children: [
                                 TextSpan(
                                   text: "Terms of Service ",
                                   style: TextStyle(
                                       fontWeight: FontWeight.w600,
                                       fontSize: 14,
                                       color: AppColor.textColor),
                                 ),
                                 TextSpan(
                                   text: " and ",
                                   style: TextStyle(
                                       fontWeight: FontWeight.w500,
                                       fontSize: 14,
                                       color: Color(0xff101010)),
                                 ),
                                 TextSpan(
                                   text: "Privacy Policy",
                                   style: TextStyle(
                                       fontWeight: FontWeight.w600,
                                       fontSize: 14,
                                       color: AppColor.textColor),
                                 ),
                               ]),
                         ),
                       )
                     ],
                   ),

                        SizedBox(height: 10,),

                  ],
                ),
              ),
              GestureDetector(
                onTap: () {

                  if (_formKey.currentState!.validate() && value==true) {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => const setPasswordPage(),
                      ),
                    );
                  }
                  else if(value==false){
                    showDialog(context: context, builder: (BuildContext context) { return const DialogForPolicy(); },);
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
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
