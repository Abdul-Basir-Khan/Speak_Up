// import 'package:flutter/material.dart';
// import 'package:specks_up/screen/auth/addProfile_page.dart';
// import 'package:specks_up/screen/auth/chooseLanguage_Page.dart';
// import 'package:specks_up/screen/auth/signup_screen.dart';
// import 'package:specks_up/themes/color.dart';
// import '../../../wedgits/reusable_text.dart';

// class setPasswordPage extends StatefulWidget {
//   const setPasswordPage({Key? key}) : super(key: key);

//   @override
//   State<setPasswordPage> createState() => _setPasswordPageState();
// }

// class _setPasswordPageState extends State<setPasswordPage> {
//   final TextEditingController confirmPasswordController =
//       TextEditingController();
//   final TextEditingController passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: AppColor.scafoldBackgroundColor,
//         body: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const SizedBox(
//                 height: 30,
//               ),
//               const ReusableText(
//                   title: 'SET YOUR PASSWORD',
//                   color: Color(0xFF000000),
//                   size: 24,
//                   weight: FontWeight.w700),
//               const SizedBox(
//                 height: 15,
//               ),
//               const ReusableText(
//                   title: 'Kindly enter and confirm your password to continue',
//                   color: Color(0xFF000000),
//                   size: 16,
//                   weight: FontWeight.w400),
//               const SizedBox(
//                 height: 20,
//               ),
//               Container(
//                 decoration: const BoxDecoration(
//                     color: AppColor.whiteColor,
//                     borderRadius: BorderRadius.all(Radius.circular(20))),
//                 child: Padding(
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
//                   child: TextFormField(
//                     controller: confirmPasswordController,
//                     decoration: const InputDecoration(
//                       suffixIcon: Icon(
//                         Icons.visibility_outlined,
//                         color: AppColor.hintIconColor,
//                       ),
//                       hintText: 'Passsword',
//                       hintStyle: TextStyle(
//                           color: AppColor.hintIconColor,
//                           fontWeight: FontWeight.w400),
//                       border: InputBorder.none,
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               Container(
//                 decoration: const BoxDecoration(
//                     color: AppColor.whiteColor,
//                     borderRadius: BorderRadius.all(Radius.circular(20))),
//                 child: Padding(
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
//                   child: TextFormField(
//                     controller: confirmPasswordController,
//                     decoration: const InputDecoration(
//                       hintText: 'Confirm Passsword',
//                       hintStyle: TextStyle(
//                           color: AppColor.hintIconColor,
//                           fontWeight: FontWeight.w400),
//                       border: InputBorder.none,
//                     ),
//                   ),
//                 ),
//               ),
//               const Expanded(
//                   child: SizedBox(
//                 height: 5,
//               )),
//               GestureDetector(
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute<void>(
//                       builder: (BuildContext context) =>
//                           const chooseLanguagePage(),
//                     ),
//                   );
//                 },
//                 child: Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(22),
//                       color: AppColor.buttonColor,
//                     ),
//                     height: 50,
//                     width: double.infinity,
//                     child: const Center(
//                       child: Text(
//                         "Continue",
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontWeight: FontWeight.w400,
//                             fontSize: 16),
//                       ),
//                     )),
//               ),
//               const SizedBox(
//                 height: 30,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
