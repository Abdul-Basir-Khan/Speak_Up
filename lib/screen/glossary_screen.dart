import 'dart:ui' as ui;

import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../themes/color.dart';
import '../wedgits/reusable_text.dart';
import 'add_new_word.dart';
import 'definition_screen.dart';
import 'drawer/drawer.dart';

class Glossary_screen extends StatefulWidget {
  const Glossary_screen({super.key});

  @override
  State<Glossary_screen> createState() => _Glossary_screenState();
}

class _Glossary_screenState extends State<Glossary_screen> {
  final List<String> items = ["adopt", "ask"];
  final List<String> items1 = ["qabul etmak", "sorus"];

  bool _isBlurWord=false;
  bool _isBlurTrans=false;
  bool value = true;
  final key = GlobalKey<ScaffoldState>();
  int _currentIndex=0;

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      key: key,
      drawer: MyFullScreenDrawer(),
      backgroundColor: AppColor.whiteColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => const AddNewWord(),
            ),
          );

        });
      },
        backgroundColor: Colors.transparent,
        elevation: 2.0,
        shape: const CircleBorder(),
        child:  Container(
          height: 100,
          width: 100,
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColor.purpleTextColor),
          child: const Center(
            child: Icon(
              Icons.add,
              color: AppColor.whiteColor,
              size: 45,
            ),
          ),
        ),

      ),
      bottomNavigationBar:

      BottomAppBar(
        height: 94,
        padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 10),
        color:const Color(0xffE8E3FF) ,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FlutterSwitch(
                  width: 60.0,
                  height: 40.0,
                  toggleSize: 12.0,
                  value:_isBlurWord,
                  borderRadius: 13.0,
                  padding: 8.0,
                  activeColor: AppColor.blackColor,
                  inactiveColor: AppColor.purpleTextColor,
                  onToggle: (val) {
                    setState(() {
                      _isBlurWord=val;
                    });
                  },
                ),
                const SizedBox(height: 10,),
                const ReusableText(
                  title: "Hide Words",
                  weight: FontWeight.bold,
                )

              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FlutterSwitch(
                  width: 60.0,
                  height: 40.0,
                  toggleSize: 12.0,
                  value: _isBlurTrans,
                  borderRadius: 13.0,
                  padding: 8.0,
                  activeColor: AppColor.blackColor,
                  inactiveColor: AppColor.purpleTextColor,
                  onToggle: (val) {
                    setState(() {
                      _isBlurTrans = val;
                    });
                  },
                ),
                const SizedBox(height: 10,),
                const ReusableText(
                  title: "Hide Translate",
                  weight: FontWeight.bold,
                )

              ],
            ),

          ],
        ),
      ),
      body:


      ListView(
      children: [

          Container(
            height:orientation==Orientation.portrait?
            MediaQuery.sizeOf(context).height*0.20:MediaQuery.sizeOf(context).height*0.35,
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
            decoration: const ShapeDecoration(
              color: Color(0xFF6849FF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
            ),
            child:

            Column(
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
                      title: 'Glosary',
                      color: Colors.white,
                      size: 24,
                      weight: FontWeight.w900,
                    ),
                    const Spacer(),
                  ],
                ),
                const ReusableText(
                  title: '(2 words)',
                  color: Colors.white,
                  size: 18,
                  weight: FontWeight.w500,
                ),
             const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                          height: 43,

                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          child: const TextField(
                            style: TextStyle(fontWeight: FontWeight.normal),
                            decoration: InputDecoration(
                                hintText: 'Search',
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: AppColor.hintIconColor,
                                ),
                                border: InputBorder.none),
                          )),
                    ),
                    const SizedBox(width: 10,),
                    Container(
                        height: 43,
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ReusableText(
                              title: "Exp",
                              color: AppColor.hintIconColor,
                              size: 16,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Image(image: AssetImage("assets/icons/exp.png"))
                          ],
                        )),
                  ],
                ),
                orientation==Orientation.portrait?const SizedBox(height: 10,):const SizedBox()
              ],
            ),
          ),


          const SizedBox(
            height: 40,
          ),


          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,children: [



              const ReusableText(
                title: 'A.',
                size: 35,
                weight: FontWeight.w900,
              ),
              const SizedBox(
                height: 10,
              ),
              ListView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.all(0),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return


                    StatefulBuilder(builder: (BuildContext context, void Function(void Function()) setState) { return   Column(
                      children: [

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            const Image(
                                image: AssetImage("assets/icons/play.png")),
                            const SizedBox(width: 15,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,children: [

                              GestureDetector(
                                onDoubleTap: (){
                                  _isBlurTrans==true &&_isBlurWord==false ? Navigator.push(context, MaterialPageRoute(builder: (context)=> const Definition())):null;

                                },
                                onTap:(){
                                  setState((){
                                    _currentIndex=index;
                                    _isBlurWord=!_isBlurWord;

                                  });
                                },
                                child: Blur(
                                  blur: _isBlurWord?5:0,
                                  child: ReusableText(
                                    title: items[index],
                                    size: 19,
                                    color: AppColor.blackColor,
                                    weight: FontWeight.w500,
                                  ),
                                ),
                              ),

                              const SizedBox(height: 2,),

                              GestureDetector(
                                onTap:(){
                                  setState((){
                                    _currentIndex=index;
                                    _isBlurTrans=!_isBlurTrans;
                                  });
                                },
                                child: Blur(
                                  blur: _isBlurTrans?5:0,
                                  child: ReusableText(
                                    title: items1[index],
                                    color: AppColor.blackColor,
                                    size: 16,
                                  ),
                                ),
                              ),

                            ],
                            )
                          ],
                        ),

                        const Divider(),
                      ],
                    ); },)

                  ;
                },
              ),
            ],
            ),
          ),


        ],
      ),
    );
  }
}
