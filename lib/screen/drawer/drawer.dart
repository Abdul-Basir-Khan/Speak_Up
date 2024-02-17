import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../themes/color.dart';
import '../../wedgits/reusable_text.dart';
import '../conversation_screen.dart';
import '../dialog/logout_dialog.dart';
import '../glossary_screen.dart';
import '../settings_new_screen.dart';
import '../vocTest.dart';
import '../vocabulary.dart';

class MyFullScreenDrawer extends StatefulWidget {
  @override
  State<MyFullScreenDrawer> createState() => _MyFullScreenDrawerState();
}

class _MyFullScreenDrawerState extends State<MyFullScreenDrawer> {
  bool isClick = false;
  @override
  Widget build(BuildContext context) {
    final List<String> itemList = [
      'Conversation',
      'Glossary',
      'Vocabulary',
      'Vocabulary Test',
      'Settings',
      'Sign Out',
    ];
    final List<String> icons = [
      'assets/svg_icon/bx_conversation.svg',
      'assets/svg_icon/icon-park-outline_english.svg',
      'assets/svg_icon/ph_exam.svg',
      'assets/svg_icon/ph_book-bold.svg',
      'assets/svg_icon/material-symbols_settings-outline.svg',
      'assets/svg_icon/mdi_logout.svg',
    ];

    return Drawer(
      child: Container(
        padding: const EdgeInsets.all(15),
        width: MediaQuery.of(context).size.width, // Full width
        color: Colors.black, // Background color
        child: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.white,
                        backgroundImage:
                        AssetImage('assets/images/Ellipse.png'),
                      ),
                      const SizedBox(
                        height: 07,
                      ),
                      const ReusableText(
                        title: 'Daniella Grace',
                        weight: FontWeight.w700,
                        color: Colors.white,
                        size: 22,
                      ),
                      const SizedBox(
                        height: 05,
                      ),
                      ReusableText(
                        title: 'Daniellag22@gmail.com',
                        color: Colors.white.withOpacity(0.5),
                        weight: FontWeight.w400,
                      )
                    ],
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        Navigator.pop(context);
                      });
                    },
                    child: CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.white,
                      child: SvgPicture.asset(
                        'assets/svg_icon/eva_collapse-fill.svg',
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 08,
            ),
            const Divider(
                thickness: 0.5,
                color: Colors.white
            ),
            ListView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: itemList.length,
              itemBuilder: (context, index) {
                return itemList[index] == itemList[0]
                    ?
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.zero,

                      leading:  SvgPicture.asset(
                        color:AppColor.whiteColor,
                        'assets/svg_icon/bx_conversation.svg',
                      ),
                      title: GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const ConversationScreen() ));
                        },
                        child: const Text(
                          "Conversation",
                          style: TextStyle(
                            color:
                              Colors.white,
                          ),
                        ),
                      ),
                      trailing: GestureDetector(
                      onTap: (){
                        setState(() {
                          isClick = !isClick;
                        });
                      },
                          child: const Icon(Icons.keyboard_arrow_down,color: AppColor.hintIconColor,)),
                    ),
                    const SizedBox(height: 10,),
                    Visibility(
                        visible: isClick,
                        child: const Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 90,
                            ),
                            ReusableText(
                              title: "Roleplay",
                              color: Colors.white,
                              size: 15,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 90,
                            ),
                            ReusableText(
                              title: "Paragraph",
                              color: Colors.white,
                              size: 15,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 90,
                            ),
                            ReusableText(
                              title: "Chatterbox",
                              color: Colors.white,
                              size: 15,
                            )
                          ],
                        ),
                        SizedBox(height: 10,),
                        Divider( thickness: 0.5,
                          color: Colors.white,)
                      ],
                    )),
                  ],
                ):

                ListTile(
                  onTap: () {

                    if (index == 4) {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                        SettingNewScreen(),
                        ),
                      );
                    }
                    else if (index == 2) {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                          const Vocabularyscreen(),
                        ),
                      );
                    }
                    else   if (index == 1) {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                          const Glossary_screen(),
                        ),
                      );
                    }
                    else   if (index == 3) {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                          const vocTestscreen(),
                        ),
                      );
                    }
                    else{
                      setState(() {
                        showDialog(
                          context: context,
                          builder:
                              (BuildContext
                          context) {
                            return const DialogForLogout(
                            );
                          },
                        );
                      });
                    }
                  },
                  contentPadding:
                  const EdgeInsets.symmetric(vertical: 7),
                  leading: SvgPicture.asset(
                    color:Colors.white,
                    icons[index],
                  ),
                  title: Text(
                    itemList[index],
                    style: const TextStyle(
                      color:Colors.white,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
