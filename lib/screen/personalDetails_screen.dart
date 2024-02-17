import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:speakup/screen/settings_new_screen.dart';
import 'package:speakup/screen/variable/varibale.dart';
import '../../../wedgits/reusable_text.dart';
import '../themes/color.dart';
import 'auth/addProfile_page.dart';
import 'auth/chooseLanguage2_page.dart';
import 'auth/chooseLanguage_Page.dart';
import 'dialog/dialog.dart';
import 'dialog/dialog_for_trans.dart';
import 'dialog/dialog_for_words.dart';

class personalDetailsPage extends StatefulWidget {


  const personalDetailsPage({
    Key? key,
  }) : super(key: key);

  @override
  State<personalDetailsPage> createState() => _personalDetailsPageState();
}

class _personalDetailsPageState extends State<personalDetailsPage> {


   bool _isValue=false;
  @override
  Widget build(BuildContext context) {
    final List<String> itemList = [
      'Name',
      'Profile Picture',
      'Phone Number',
      'Email Address',
      'Native Language',
      'Target Language',
      'Proficiency Level',
      'Glossary',

    ];

    final List<String> icons = [
      'assets/svg_icon/p1.svg',
      'assets/svg_icon/gg_profile.svg',
      'assets/svg_icon/p2.svg',
      'assets/svg_icon/p3.svg',
      'assets/svg_icon/p4.svg',
      'assets/svg_icon/p4.svg',
      'assets/svg_icon/p15.svg',
      'assets/svg_icon/glossary.svg',
    ];

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.scafoldBackgroundColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> SettingNewScreen()));
                        },
                        child: const Icon(
                          Icons.arrow_back_ios_sharp,
                          color: Colors.black,
                        ),
                    ),
                    const Spacer(),
                    const ReusableText(
                        title: 'Personal Details',
                        size: 24,
                        weight: FontWeight.w700),
                    const Spacer(),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Stack(
                      children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage(
                            "assets/images/dp.png",
                          ),
                          radius: 50,
                        ),
                        Positioned(
                          top: 65,
                          left: 65,
                          child: Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(60),
                              ),
                              color: AppColor.blackColor,
                            ),
                            height: 35,
                            width: 35,
                            child: const Center(
                                child: Icon(
                              Icons.camera_alt_outlined,
                              size: 20,
                              color: AppColor.whiteColor,
                            )),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ReusableText(
                            title: 'Elchin Musayev',
                            size: 24,
                            weight: FontWeight.w700),
                        SizedBox(
                          height: 5,
                        ),
                        ReusableText(
                          title: 'Joined Sept. 13, 2013',
                          size: 16.5,
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Divider(
                  thickness: 0.5,
                ),
                const SizedBox(
                  height: 15,
                ),
                const ReusableText(
                  title: "Account",
                  size: 13.5,
                  weight: FontWeight.w400,
                  color: AppColor.hintIconColor,
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  itemCount: itemList.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                        contentPadding: const EdgeInsets.symmetric(vertical: 2),
                        leading: SvgPicture.asset(
                          color:AppColor.hintIconColor,
                          icons[index],
                          height: 23,
                          width: 23, // Replace with your SVG file path
                        ),
                        title: Text(
                          itemList[index],
                            style: TextStyle(
                                fontSize: 16,fontWeight: FontWeight.w600,color: AppColor.hintIconColor
                            )
                        ),
                        trailing:
                        InkWell(
                          onTap: () {
                            setState(() {
                              varibale.nativeLanguage=!varibale.nativeLanguage;
                              varibale.targetLanguage=!varibale.targetLanguage;
                              varibale.profilePic=!varibale.profilePic;
                              index == 0 ||
                                  index == 2 ||
                                      index == 3
                                  ?
                              showModalBottomSheet(
                                      isScrollControlled: true,
                                      context: context,
                                      shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(15),
                                              topLeft: Radius.circular(15))),
                                      builder: (BuildContext context) {
                                        return StatefulBuilder(
                                          builder: (BuildContext context,
                                              void Function(void Function())
                                                  setState) {
                                            return Container(
                                              height: MediaQuery.sizeOf(context)
                                                      .height *
                                                  0.65,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20)),
                                              padding:
                                                  const EdgeInsets.all(16.0),
                                              child: SingleChildScrollView(
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  physics:
                                                      const ScrollPhysics(),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      ReusableText(
                                                        title: index == 0
                                                            ? "Name"
                                                            : index == 2
                                                                ? 'Phone Number'
                                                                :'Email Address',
                                                        color: AppColor
                                                            .purpleTextColor,
                                                        size: 15,
                                                      ),
                                                      const SizedBox(
                                                        height: 10,
                                                      ),
                                                      TextFormField(
                                                        decoration:
                                                            InputDecoration(
                                                          hintText: index == 0
                                                              ? "Enter Name"
                                                              : index == 2
                                                                  ? 'Enter Phone Number'
                                                                  : 'Enter Email Address',
                                                          hintStyle: const TextStyle(
                                                            color: AppColor
                                                                .hintIconColor,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                          border: OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10),
                                                              borderSide: const BorderSide(
                                                                  color: AppColor
                                                                      .scafoldBackgroundColor)),
                                                          enabledBorder: OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10),
                                                              borderSide: const BorderSide(
                                                                  color: AppColor
                                                                      .scafoldBackgroundColor)),
                                                          focusedBorder: OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10),
                                                              borderSide: const BorderSide(
                                                                  color: AppColor
                                                                      .scafoldBackgroundColor)),
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        height: 20,
                                                      ),
                                                      InkWell(
                                                        onTap: () {
                                                          setState(() {
                                                         showDialog(
                                                              context: context,
                                                              builder:
                                                                  (BuildContext
                                                                      context) {
                                                                return DialogForAll(
                                                                    name: index ==
                                                                            0
                                                                        ? 'Name'
                                                                        : index ==
                                                                                2
                                                                            ? 'Phone Number'
                                                                            :'Email Address'
                                                                );
                                                              },
                                                            );
                                                          });
                                                        },
                                                        child: Container(
                                                          padding: const EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      10,
                                                                  vertical: 10),
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                            color: AppColor
                                                                .buttonColor,
                                                          ),
                                                          child: const Center(
                                                            child: ReusableText(
                                                              title: "Continue",
                                                              color: AppColor
                                                                  .whiteColor,
                                                              size: 15,
                                                            ),
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  )),
                                            );
                                          },
                                        );
                                      },
                                    )
                                  :

                              index == 1 && varibale.profilePic==true
                                  ? Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                  const addProfilePage(),
                                ),
                              ):
                              index == 4 && varibale.nativeLanguage==true
                                      ? Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const chooseLanguagePage(),
                                          ),
                                        )
                                      : index == 5 && varibale.targetLanguage==true
                                  ?Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const chooseLanguage1Page(
                                           ),
                                          ),
                                        ): index == 6 && varibale.targetLanguage==true
                                  ?Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                  const chooseLanguage1Page(
                                  ),
                                ),
                              ):null;
                            });
                          },
                          child: index==7?const ReusableText(
                            title: "Create",
                            color: AppColor.purpleTextColor,
                            size: 15,
                          ):const ReusableText(
                            title: "Change",
                            color: AppColor.purpleTextColor,
                            size: 15,
                          ),
                        ));
                  },
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading:   SvgPicture.asset(
                    'assets/svg_icon/p14.svg',
                    height: 23,
                    width: 23, // Replace with your SVG file path
                  ),
                  title:  const Text(
                    'Lexicon',
                    style: TextStyle(
                      fontSize: 16,fontWeight: FontWeight.w600,color: AppColor.hintIconColor
                    ),
                  ),
                  trailing:
                  SizedBox(
                    width: 55,
                    child: FlutterSwitch(
                      width: 55.0,
                      height: 25.0,
                      toggleSize: 12.0,
                      value:_isValue,
                      borderRadius: 13.0,
                      padding: 5.0,
                      activeColor: AppColor.blackColor,
                      inactiveColor: AppColor.purpleTextColor,
                      onToggle: (val) {
                        setState(() {
                          _isValue=val;
                        });
                      },
                    ),
                  )
                ),
                const SizedBox(
                  height: 10,
                ),

                ListTile(  contentPadding: EdgeInsets.zero,
                  leading:  const Text(
                      'Definition',
                      style: TextStyle(
                      fontSize: 16,fontWeight: FontWeight.w600,color: AppColor.hintIconColor
                  )
                  ),
                  titleAlignment: ListTileTitleAlignment.center,
                  title: FlutterSwitch(
                    width: 55.0,
                    height: 25.0,
                    toggleSize: 12.0,
                    value:varibale.isDefinition,
                    borderRadius: 13.0,
                    padding: 5.0,
                    activeColor: AppColor.blackColor,
                    inactiveColor: AppColor.purpleTextColor,
                    onToggle: (val) {
                      setState(() {
                        varibale.isDefinition!= varibale.isDefinition;
                        varibale.isDefinition==true?
                        showDialog(context: context, builder: (BuildContext context) { return DialogForWords(onTap: (){
                          Navigator.pop(context);
                        }); },)
                            :
                        showDialog(context: context, builder: (BuildContext context) { return DialogForTrans(onTap: (){
                          Navigator.pop(context);
                        }); },);
                        varibale.isDefinition=val;
                      });
                    },
                  ),
                  trailing:     const Text('Translation',  style: TextStyle(
                      fontSize: 16,fontWeight: FontWeight.w600,color: AppColor.hintIconColor
                  )),
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
