
import 'package:custom_date_range_picker/custom_date_range_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:speakup/screen/variable/varibale.dart';

import '../themes/color.dart';
import '../wedgits/reusable_text.dart';
import 'drawer/drawer.dart';

class vocTestscreen extends StatefulWidget {
  const vocTestscreen({super.key});

  @override
  State<vocTestscreen> createState() => _vocTestscreenState();
}

class _vocTestscreenState extends State<vocTestscreen> {
  final key = GlobalKey<ScaffoldState>();
  DateTime? startDate;
  DateTime? endDate;
  bool _isTrans=false;
  bool _isTransOne=false;
  bool _isTransTwo=false;

  bool _isDefOne=false;
  bool _isDefTwo=false;
  bool _isDefThree=false;



  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return SafeArea(
      child: Scaffold(
        key: key,
        drawer: MyFullScreenDrawer(),
      
        backgroundColor: AppColor.whiteColor,
        body:Column(
          crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height:orientation==Orientation.portrait?
              MediaQuery.sizeOf(context).height*0.20:MediaQuery.sizeOf(context).height*0.35,
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              decoration: const ShapeDecoration(
                color: Color(0xFF6849FF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
              ),
              child:   Column(
                crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            key.currentState!.openDrawer();
                          });
                        },
                        child: const Icon(
                          Icons.more_horiz,
                          color: AppColor.whiteColor,
                        ),
                      ),
                      const Spacer(),
                      const ReusableText(
                        title: 'VocTest',
                        color: Colors.white,
                        size: 24,
                        weight: FontWeight.w900,
                      ),
                      const Spacer(),
                    ],
                  ),
                  const Center(
                    child: ReusableText(
                      title: '(3 words)',
                      color: Colors.white,
                      size: 16,
                      weight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap:(){
                            _isTransOne=!_isTransOne;
                            _isDefOne=!_isDefOne;
                            showCustomDateRangePicker(
                              context,
                              dismissible: true,
                              minimumDate: DateTime.now().subtract(const Duration(days: 30)),
                              maximumDate: DateTime.now().add(const Duration(days: 30)),
                              endDate: endDate,
                              startDate: startDate,
                              backgroundColor: Colors.white,
                              primaryColor: Colors.green,
                              onApplyClick: (start, end) {
                                setState(() {
                                  endDate = end;
                                  startDate = start;
                                });
                              },
                              onCancelClick: () {
                                setState(() {
                                  endDate = null;
                                  startDate = null;
                                });
                              },
                            );
                          },
                          child: Container(
                            height: 43,
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                            child: Row(
                              crossAxisAlignment:
                              CrossAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.search,
                                  color: AppColor.hintIconColor,
                                ),
                                const SizedBox(width: 15),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
      
                                    ReusableText(
                                      title:   startDate != null
                                          ? DateFormat('yyyy-MM-dd')
                                          .format(startDate!)
                                          : 'Period: ',
                                      color: AppColor.hintIconColor,
                                      size: 14,
                                    ),
      
                                    const SizedBox(width: 10,),
      
                                    ReusableText(
                                      title:    endDate != null
                                          ? DateFormat('yyyy-MM-dd')
                                          .format(endDate!)
                                          : 'From/To',
                                      color: AppColor.hintIconColor,
                                      size: 14,
                                    ),
      
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                          height: 43,
                          padding:
                          const EdgeInsets.symmetric(horizontal: 25),
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap:(){
                                  setState(() {
                                    endDate  =null;
                                    startDate  =null;
                                  });
                                },
                                child: const ReusableText(
                                  title: "Reset",
                                  color: AppColor.hintIconColor,
                                  size: 14,
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                  orientation==Orientation.portrait?const SizedBox(height: 15,):const SizedBox()
                ],
              ),
            ),
            varibale.isDefinition==true?
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child:ListView
                        (
                        children: [
                          const SizedBox(
                            height: 50,
                          ),

                          _isTrans==true && _isTransOne==true?

                         FutureBuilder(future: Future.delayed(Duration(seconds: 5)), builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) { return  Row(
                           children: [
                             Image(image: AssetImage("assets/icons/play.png")),
                             SizedBox(
                               width: 13,
                             ),
                             InkWell(
                               onTap: () {
                                 // Handle onTap
                               },
                               child: ReusableText(
                                 title: 'parental',
                                 size: 19,
                                 weight: FontWeight.w500,
                               ),
                             ),
                           ],
                         ); },  )

                              :SizedBox(),


                          const SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                             Visibility(
                               visible: _isTransOne,
                                child: const Row(
                                  children: [
                                    SizedBox(
                                      width: 45,
                                    ),
                                    ReusableText(
                                      title: "qabul etmak",
                                      size: 16,
                                    ),
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: (){
      
                                },
                                child: Container(
                                    height: 30,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      border: Border.all(
                                        color: AppColor.blackColor,
                                        width: 1.0,
                                      ),
                                    ),
                                    child: const Center(
                                      child: ReusableText(
                                        title: "Next",
                                        color: AppColor.blackColor,
                                        size: 13,
                                      ),
                                    )),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Visibility(
                                visible: _isTrans,
                                child: const Row(
                                  children: [
                                    SizedBox(
                                      width: 45,
                                    ),
                                    ReusableText(
                                      title: 'parental',
                                      size: 19,
                                      weight: FontWeight.w500,
                                    ),
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: (){
      
                                },
                                child: Container(
                                    height: 30,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      border: Border.all(
                                        color: AppColor.blackColor,
                                        width: 1.0,
                                      ),
                                    ),
                                    child: const Center(
                                      child: ReusableText(
                                        title: "Done",
                                        color: AppColor.blackColor,
                                        size: 13,
                                      ),
                                    )),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10,),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                              height: 48,
                              decoration: ShapeDecoration(
                                color: AppColor.scafoldBackgroundColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    contentPadding:
                                    const EdgeInsets.only(left: 10, top: 10),
                                    hintText: 'Say Something....',
                                    hintStyle: const TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.grey),
                                    prefixIcon: GestureDetector(
                                        onTap: () {
                                          _isTrans=!_isTrans;
                                          showModalBottomSheet(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return Container(
                                                padding: const EdgeInsets.all(20),
                                                height: 100.0,
                                                color: Colors.white,
                                                child: const Row(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                                  children: [
                                                    Icon(Icons.square),
                                                    SizedBox(width: 15),
                                                    ReusableText(
                                                      title:
                                                      'Tap to stop recording',
                                                    )
                                                  ],
                                                ),
                                              );
                                            },
                                          );
                                        },
                                        child: const Icon(
                                            Icons.keyboard_voice_outlined,
                                            color: Colors.grey)),
                                    border: InputBorder.none),
                              )),
                        ),
                        const SizedBox(width: 10),
                        InkWell(
                          onTap: () {
                          },
                          child: Container(
                              width: 54,
                              height: 48,
                              padding: const EdgeInsets.all(10),
                              decoration: ShapeDecoration(
                                color: AppColor.scafoldBackgroundColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              ),
                              child: SvgPicture.asset(
                                  'assets/svg_icon/send.svg',
                                  color: Colors.grey)),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                ],
              ),
            )
                :
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
      
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: ListView(
                        children: [
                        const SizedBox(height: 50,),
                        Visibility(
                          visible: _isDefOne,
                          child: Row(
                            children: [
                              const Image(image: AssetImage("assets/icons/play.png")),
                              const SizedBox(
                                width: 13,
                              ),
                              InkWell(
                                onTap: (){

                                },
                                child: const ReusableText(
                                  title: 'parental',
                                  size: 19,
                                  weight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10,),
      
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Visibility(
                              visible: _isDefTwo,
                              child: Container(
                                width: MediaQuery.sizeOf(context).width*0.70,
                                padding:const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    border: Border.all(color: AppColor.hintIconColor.withOpacity(0.30))
                                ),
                                child:
                                const Center(
                                  child:
                                  ReusableText(
                                    title: "Use Speaks to microphone and his definition of the word will appear here",
                                    size: 16,
                                  ) ,
                                ),
                              ),
                            ),
                        Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,children: [
                              InkWell(
                                onTap: (){
      
                                },
                                child: Container(
                                    height: 30,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      border: Border.all(
                                        color: AppColor.blackColor,
                                        width: 1.0,
                                      ),
                                    ),
                                    child: const Center(
                                      child: ReusableText(
                                        title: "Next",
                                        color: AppColor.blackColor,
                                        size: 13,
                                      ),
                                    )),
                              ),
                              const SizedBox(height: 10,),
                              InkWell(
                                onTap: (){
      
                                },
                                child: Container(
                                    height: 30,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      border: Border.all(
                                        color: AppColor.blackColor,
                                        width: 1.0,
                                      ),
                                    ),
                                    child: const Center(
                                      child: ReusableText(
                                        title: "Done",
                                        color: AppColor.blackColor,
                                        size: 13,
                                      ),
                                    )),
                              ),
      
                            ],
                            )
                          ],
                        ),
      
                        const SizedBox(height: 15,),
                       _isDefOne==true && _isDefTwo==true?
                    FutureBuilder(future: Future.delayed(Duration(seconds: 5)), builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) { return    Row(
                      children: [
                        Column(
                          children: [
                            Tooltip(
                                message: 'Repeat the message',
                                child: SvgPicture.asset(
                                    'assets/svg_icon/ic_outline-refresh.svg')),
                            const SizedBox(height: 10),
                            const Image(
                                image: AssetImage(
                                    'assets/images/circle_image.png'))
                          ],
                        ),
                        const SizedBox(width: 15,),
                        Expanded(
                          child: Container(
                            padding:const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                border: Border.all(color: AppColor.hintIconColor.withOpacity(0.30))
                            ),
                            child:
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                ReusableText(
                                  title: "Here AI will comment user's definition of the word, and present some sample sentence if necessary ",
                                  size: 16,
                                ),
                                SizedBox(height: 40,)
                              ],
                            ),
                          ),
                        ),
                      ],
                    ); }, ):SizedBox(),
      
                        const SizedBox(height: 10,),
                      ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                              height: 48,
                              decoration: ShapeDecoration(
                                color: AppColor.scafoldBackgroundColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    contentPadding:
                                    const EdgeInsets.only(left: 10, top: 10),
                                    hintText: 'Say Something....',
                                    hintStyle: const TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.grey),
                                    prefixIcon: GestureDetector(
                                        onTap: () {
                                          _isDefTwo=!_isDefTwo;
                                          showModalBottomSheet(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return Container(
                                                padding: const EdgeInsets.all(20),
                                                height: 100.0,
                                                color: Colors.white,
                                                child: const Row(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                                  children: [
                                                    Icon(Icons.square),
                                                    SizedBox(width: 15),
                                                    ReusableText(
                                                      title:
                                                      'Tap to stop recording',
                                                    )
                                                  ],
                                                ),
                                              );
                                            },
                                          );
                                        },
                                        child: const Icon(
                                            Icons.keyboard_voice_outlined,
                                            color: Colors.grey)),
                                    border: InputBorder.none),
                              )),
                        ),
                        const SizedBox(width: 10),
                        InkWell(
      
                          onTap: () {
                          },
                          child: Container(
                              width: 54,
                              height: 48,
                              padding: const EdgeInsets.all(10),
                              decoration: ShapeDecoration(
                                color: AppColor.scafoldBackgroundColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              ),
                              child: SvgPicture.asset(
                                  'assets/svg_icon/send.svg',
                                  color: Colors.grey)),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height:10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
