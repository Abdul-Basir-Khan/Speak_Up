// import 'package:flutter/material.dart';
// import 'package:flutter/scheduler.dart';
// import 'package:specks_up/themes/color.dart';
//
// import '../wedgits/reusable_text.dart';
//
// class TranslationPage extends StatefulWidget {
//   const TranslationPage({super.key});
//
//   @override
//   State<TranslationPage> createState() => _TranslationPageState();
// }
//
// class _TranslationPageState extends State<TranslationPage> {
//   bool value=false;
//
//   final List words=[
//     'anxious',
//     'troubled',
//     'restless',
//     'Anchor',
//     'After',
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFE7E3FF),
//       body: SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Container(
//               height: 122,
//               padding:  const EdgeInsets.symmetric(horizontal: 10),
//               decoration: const ShapeDecoration(
//                 color: Color(0xFF6849FF),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.only(
//                     bottomLeft: Radius.circular(20),
//                     bottomRight: Radius.circular(20),
//                   ),
//                 ),
//               ),
//               child:  Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   const SizedBox(
//                     height: 50,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       GestureDetector(
//                         onTap: (){
//                           Navigator.pop(context);
//                         },
//                         child: const Icon(
//                           Icons.arrow_back_ios,
//                           color: AppColor.whiteColor,
//                         ),
//                       ),
//                       const Spacer(),
//                       const ReusableText(
//                         title: 'Translation',
//                         color: Colors.white,
//                         size: 24,
//                         weight: FontWeight.w700,
//                       ),
//                       const Spacer(),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 15),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   const Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       ReusableText(
//                         title: 'Azerbaijani',
//                         color: Colors.black,
//                         size: 14,
//                         weight: FontWeight.w500,
//                       ),
//                       Spacer(),
//                       Image(image: AssetImage("assets/icons/voice.png")),
//                     ],
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   const ReusableText(
//                     title: 'narahat',
//                     size: 24,
//                     weight: FontWeight.w500,
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   const Divider(),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   const Row(
//                     children: [
//                       ReusableText(
//                         title: 'English',
//                         color: Colors.black,
//                         size: 14,
//                         weight: FontWeight.w500,
//                       ),
//                       Spacer(),
//                       Image(image: AssetImage("assets/icons/voice.png")),
//                     ],
//                   ),
//
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   const ReusableText(
//                     color: AppColor.hintIconColor,
//                     title: 'worried',
//                     size: 24,
//                     weight: FontWeight.w500,
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   const Divider(),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   const ReusableText(
//                     title: 'Other translations',
//                     color: Colors.black,
//                     size: 20,
//                     weight: FontWeight.w600,
//                   ),
//                   const SizedBox(
//                     height: 10,)
//                   ,
//                   Column(
//
//                     children: List.generate(words.length, (index) =>  StatefulBuilder(builder: (BuildContext context, void Function(void Function()) setState) { return
//
//
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           CheckboxListTile(
//                             contentPadding: const EdgeInsets.all(0),
//                             controlAffinity: ListTileControlAffinity.leading,
//                             title:  ReusableText(
//                                 title:words[index].toString() ,
//                                 size: 17,
//                                 weight: FontWeight.w500),
//                             activeColor: AppColor.purpleTextColor,
//                             value: timeDilation != 1.0,
//                             onChanged: (value) {
//                               setState(() {
//                                 timeDilation = value! ? 10.0 : 1.0;
//                               });
//                             },
//                           ),
//                           Padding(
//                             padding: EdgeInsets.only(left: MediaQuery.sizeOf(context).width*0.15),
//                             child: const ReusableText(
//                               title:
//                               'narahat, heyecanli, nigaran, sekseli, intizarli',
//                               color: AppColor.hintIconColor,
//                               size: 17,
//                               weight: FontWeight.w400,
//                             ),
//                           ),
//                           const SizedBox(
//                             height: 15,
//                           ),
//
//
//                         ],); },)
//                     ),
//                   ),
//
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
