import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../themes/color.dart';
import '../wedgits/reusable_text.dart';
import 'add_new_word.dart';
import 'definition_screen.dart';
import 'drawer/drawer.dart';

class Vocabularyscreen extends StatefulWidget {
  const Vocabularyscreen({super.key});

  @override
  State<Vocabularyscreen> createState() => _VocabularyscreenState();
}

class _VocabularyscreenState extends State<Vocabularyscreen> {
  final List<String> items = [
    "ties",
    "Parental",
    "sibling rivalry",
    "nature",
    "friendship",
    "rivalry",
    "adopt"
  ];
  final List<String> items1 = [
    "bağlar",
    "valideyn",
    "qardas raqabati",
    "tabiat",
    "dostluq",
    "raqabat",
    "qabul etmak"
  ];
int  _currentIndex=0;


  bool _isBlurWord = false;

  final key = GlobalKey<ScaffoldState>();
  bool _isBlurTrans = false;
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return SafeArea(
      child: Scaffold(
        key: key,
        drawer: MyFullScreenDrawer(),
        backgroundColor: AppColor.whiteColor,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(onPressed: () {
      
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => const AddNewWord(),
            ),
          );
      
      
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
        bottomNavigationBar: BottomAppBar(
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
                    value: _isBlurWord,
                    borderRadius: 13.0,
                    padding: 8.0,
                    activeColor: AppColor.blackColor,
                    inactiveColor: AppColor.purpleTextColor,
                    onToggle: (val) {
                      setState(() {
                        _isBlurWord = val;
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
        body:ListView(
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
              child: Column(
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
                        title: 'Vocabulary',
                        color: Colors.white,
                        size: 24,
                        weight: FontWeight.w700,
                      ),
                      const Spacer(),
                    ],
                  ),
                  const ReusableText(
                    title: '(25 words)',
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
                            padding: EdgeInsets.zero,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                            child: const TextField(
                              scrollPadding: EdgeInsets.zero,
                              style: TextStyle(fontWeight: FontWeight.normal),
                              decoration: InputDecoration(
                                hintTextDirection: TextDirection.ltr,
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
            ListView.builder(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              padding: const EdgeInsets.all(0),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return

                 StatefulBuilder(builder: (BuildContext context, void Function(void Function()) setState) { return Column(
                   children: [
                     ListTile(
                       title: GestureDetector(
                         onDoubleTap: (){
                           _isBlurTrans==true &&_isBlurWord==false ? Navigator.push(context, MaterialPageRoute(builder: (context)=> const Definition())):null;

                         },
                         child: GestureDetector(
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
                               weight: FontWeight.w500,
                             ),
                           ),
                         ),
                       ),
                       subtitle: GestureDetector(
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
                             size: 16,
                           ),
                         ),
                       ),
                       leading: const Image(
                           image: AssetImage("assets/icons/play.png")),
                       trailing: InkWell(
                         onTap:(){

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
                     ),
                     const Divider(),
                   ],
                 ); },);
              },
            ),
          ],
        ),
      ),
    );
  }
}




