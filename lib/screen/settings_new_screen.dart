import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:speakup/screen/personalDetails_screen.dart';
import 'package:speakup/screen/sendReview_screen.dart';
import 'package:speakup/screen/speechController_screen.dart';
import '../../../wedgits/reusable_text.dart';
import '../themes/color.dart';
import 'FAQ_screen.dart';
import 'TC_screen.dart';
import 'contact_screen.dart';
import 'deleteAccount_screen.dart';
import 'dialog/logout_dialog.dart';
import 'drawer/drawer.dart';
import 'grow_screen.dart';


class SettingNewScreen extends StatefulWidget {
  @override
  State<SettingNewScreen> createState() => _SettingNewScreenState();
}

class _SettingNewScreenState extends State<SettingNewScreen> {

  @override
  Widget build(BuildContext context) {

    final List<String> itemList = [
      'Personal Details',
      'Speech Controller',
      'Send Review',
      'Delete Account',
    ];
    final List<String> itemList1 = [
      'Subscription Plans',
    ];
    final List<String> itemList2 = [
      'Terms & Conditions',
      'Contact Us',
      'FAQ',
      'Sign out',
    ];
    final List<String> icons = [
      'assets/svg_icon/s1.svg',
      'assets/svg_icon/s2.svg',
      'assets/svg_icon/s3.svg',
      'assets/svg_icon/s4.svg',
    ];
    final List<String> icons1 = [
      'assets/svg_icon/s5.svg',
    ];
    final List<String> icons2 = [
      'assets/svg_icon/s6.svg',
      'assets/svg_icon/s7.svg',
      'assets/svg_icon/s8.svg',
      'assets/svg_icon/s9.svg',
    ];
    final key= GlobalKey<ScaffoldState>();
    return SafeArea(
      child: Scaffold(
        key: key,
        drawer:MyFullScreenDrawer(),
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,backgroundColor: Colors.transparent,
           leading: IconButton(
              icon: Icon(Icons.more_horiz), // Change the icon here
              onPressed: () {
                key.currentState!.openDrawer();
              },
            ),
          title: const ReusableText(
            title: 'SETTINGS', size: 24, weight: FontWeight.w700),
        ),
        backgroundColor: AppColor.scafoldBackgroundColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),


                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage(
                            "assets/images/dp.png",
                          ),
                          radius: 40,
                        ),
                        Positioned(
                      bottom: 0,right: 0,
                          child: Container(
                            decoration: const BoxDecoration(
                             shape: BoxShape.circle,
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

                ...List.generate(itemList.length, (index) =>  ListTile(
                  onTap: () {
                    if (index == 0) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                          const personalDetailsPage(),
                        ),
                      );
                    }
                    else if (index == 1) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                          const speechControllerPage(),
                        ),
                      );
                    }
                    else if (index == 2) {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                          const sendReviewPage(),
                        ),
                      );
                    }
                    else if (index == 3) {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                          const deleteAccountPage(),
                        ),
                      );
                    }
                  },
                  contentPadding: const EdgeInsets.symmetric(vertical: 2),
                  leading: SvgPicture.asset(
                    icons[index],
                    height: 23,
                    width: 23, // Replace with your SVG file path
                  ),
                  title: Text(
                    itemList[index],
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                  ),
                )),

                const SizedBox(
                  height: 15,
                ),
                const Divider(
                  thickness: 0.5,
                ),
                const SizedBox(
                  height: 15,
                ),

                ...List.generate(itemList1.length, (index) =>   ListTile(
                  onTap: () {
                    if (index == 0) {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                          const growPage(),
                        ),
                      );
                    }
                  },
                  contentPadding: const EdgeInsets.symmetric(vertical: 2),
                  leading: SvgPicture.asset(
                    icons1[index],
                    height: 23,
                    width: 23, // Replace with your SVG file path
                  ),
                  title: Text(
                    itemList1[index],
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                  ),
                )),


                const SizedBox(
                  height: 15,
                ),
                const Divider(
                  thickness: 0.5,
                ),
                const SizedBox(
                  height: 15,
                ),

                ...List.generate(itemList2.length, (index) =>  ListTile(
                  onTap: () {
                    if (index == 0) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => const TCPage(),
                        ),
                      );
                    }
                    else   if (index == 1) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                          const ContactPage(),
                        ),
                      );
                    }
                    else if (index == 2) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                          const FAQPage(),
                        ),
                      );
                    }
                    else {
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
                  contentPadding: const EdgeInsets.symmetric(vertical: 2),
                  leading: SvgPicture.asset(
                    icons2[index],
                    height: 23,
                    width: 23, // Replace with your SVG file path
                  ),
                  title: Text(
                    itemList2[index],
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                  ),
                )),
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
