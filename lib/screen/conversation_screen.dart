import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:speakup/screen/variable/varibale.dart';
import '../themes/color.dart';
import '../wedgits/reusable_text.dart';
import 'conversation_screen2.dart';
import 'dialog/dialog_for_word_def.dart';
import 'dialog/dialog_for_word_trans.dart';
import 'drawer/drawer.dart';

class ConversationScreen extends StatefulWidget {
  const ConversationScreen({super.key});

  @override
  State<ConversationScreen> createState() => _ConversationScreenState();
}

class _ConversationScreenState extends State<ConversationScreen> {
  bool value = true;
  final key = GlobalKey<ScaffoldState>();
  bool _isVisible=true;
  bool _isVisibleOne=false;
  @override
  Widget build(BuildContext context) {

    final orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      key: key,
      drawer: MyFullScreenDrawer(),
      backgroundColor: const Color(0xffE7E3FF),
      appBar: (AppBar(

        centerTitle: true,
        backgroundColor: Colors.transparent,

        title: const ReusableText(
          title: 'Conversation',
          color: Colors.black,
          size: 20,
          weight: FontWeight.w700,
        ),
        leading:InkWell(
          onTap: () {
          setState(() {
            key.currentState!.openDrawer();
          });
          },
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SvgPicture.asset(
              'assets/svg_icon/menu-dots.svg',
            ),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              setState(() {
                value = !value;
               _isVisible=!_isVisible;
              });
            },
            child: SvgPicture.asset(
              'assets/svg_icon/subtitle.svg',
              color: value ? Colors.grey.shade600 : const Color(0xFFAF9FFF),
            ),
          ),
          const SizedBox(
            width: 05,
          ),
          SvgPicture.asset(
            'assets/svg_icon/dawonlod.svg',
          ),
          const SizedBox(width: 15),
        ],
      )),

      body:

      Column(
        crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.to(const ConversationScreen2());
                        },
                        child: Container(
                          padding: const EdgeInsets.only(right: 10, top: 10),
                          width: 336,
                          height: 192,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFAF9FFF),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('assets/images/users_image.png'),
                              const SizedBox(width: 20),
                              const ReusableText(
                                  title: '10:45',
                                  color: Color(0xFF6849FF),
                                  size: 18,
                                  weight: FontWeight.w700),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
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
                          const SizedBox(width: 10),
                          Visibility(
                            visible: _isVisible,
                            child:

                            GestureDetector(

onTap: (){

  varibale.isDefinition==true?showDialog(context: context, builder: (BuildContext context) {return  DialogForWordTrans(); }, ):showDialog(context: context, builder: (BuildContext context) {return  DialogForWordDef(); }, );
},                              child: Container(
                                width: MediaQuery.sizeOf(context).width*0.80,
                                padding: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(16),
                                    topRight: Radius.circular(16),
                                    bottomRight: Radius.circular(16),
                                  ),
                                  color: Colors.white
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'Hello Mike. Today we will be practicing Adjectives and Adverbs. Please feel free to always replay if you don’t understand or ask any questions.',
                                        style: TextStyle(
                                          color: Colors.black.withOpacity(0.75),
                                          fontSize: 14,
                                          fontFamily: 'Open Sans',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Visibility(
                        visible: _isVisibleOne,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Tooltip(
                                    message: 'Repeat the message',
                                    child: SvgPicture.asset(
                                        'assets/svg_icon/ic_outline-refresh.svg')),
                                const SizedBox(height: 10),
                        Image.asset(
                            height:30,width:30,
                            'assets/images/User.png'),
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              padding: const EdgeInsets.all(20),
                              decoration: const ShapeDecoration(
                                color: Color(0xFF6849FF),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(16),
                                    topRight: Radius.circular(16),
                                    bottomLeft: Radius.circular(16),
                                  ),
                                ),
                              ),
                              child: SizedBox(
                                width: 230,
                                child: Text(
                                  'Hello. I go to school yesterday',
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.75),
                                    fontSize: 14,
                                    fontFamily: 'Open Sans',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      // For backend purpose

                      //
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.end,
                      //   children: [ Image.asset(
                      //       height:30,width:30,
                      //       'assets/images/circle_image.png'),
                      //     const SizedBox(width: 10,),
                      //     Container(
                      //       padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                      //       decoration: const ShapeDecoration(
                      //         color: Color(0xFF039C00),
                      //         shape: RoundedRectangleBorder(
                      //           borderRadius: BorderRadius.only(
                      //             topLeft: Radius.circular(16),
                      //             topRight: Radius.circular(16),
                      //             bottomLeft: Radius.circular(16),
                      //           ),
                      //         ),
                      //       ),
                      //       child: SizedBox(
                      //         width: 230,
                      //         child: Text(
                      //           'Hello. I went to school yesterday',
                      //           style: TextStyle(
                      //             color: Colors.white.withOpacity(0.75),
                      //             fontSize: 14,
                      //             fontFamily: 'Open Sans',
                      //             fontWeight: FontWeight.w400,
                      //             height: 0,
                      //           ),
                      //         ),
                      //       ),
                      //     ),
                      //
                      //
                      //   ],
                      // )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                      height: 48,
                      decoration: ShapeDecoration(
                        color: Colors.white,
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
                                              title: 'Tap to stop recording',
                                            )
                                          ],
                                        ),
                                      );
                                    },
                                  );
                                },
                                child: const Icon(Icons.keyboard_voice_outlined,
                                    color: Colors.grey)),
                            border: InputBorder.none),
                      )),
                ),
                const SizedBox(width: 10),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _isVisibleOne=!_isVisibleOne;
                    });
                  },
                  child: Container(
                      width: 54,
                      height: 48,
                      padding: const EdgeInsets.all(10),
                      decoration: ShapeDecoration(
                        color: AppColor.whiteColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: SvgPicture.asset('assets/svg_icon/send.svg',
                            color: Colors.grey),
                      )),
                )
              ],
            ),
          ),
          const SizedBox(height: 10,),
        ],
      ),
    );
  }
}
