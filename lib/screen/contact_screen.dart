import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../wedgits/reusable_text.dart';
import '../themes/color.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    final List<String> itemList2 = [
      'Twitter',
      'LinkedIn',
      'Instagram',
      'Facebook',
      'Youtube',
      'Tiktok',
      'Whatsapp',
      'Website',
      'Email'
    ];

    final List<String> icons2 = [
      'assets/svg_icon/p6.svg',
      'assets/svg_icon/p7.svg',
      'assets/svg_icon/p8.svg',
      'assets/svg_icon/p9.svg',
      'assets/svg_icon/p10.svg',
      'assets/svg_icon/p11.svg',
      'assets/svg_icon/p12.svg',
      'assets/svg_icon/p13.svg',
      'assets/svg_icon/p16.svg',
    ];

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.scafoldBackgroundColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: ListView(
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios_sharp,
                      color: AppColor.blackColor,
                    ),
                  ),
                  const Spacer(),
                  const ReusableText(
                      title: 'CONTACT US', size: 24, weight: FontWeight.w700),
                  const Spacer(),
                ],
              ),
              const SizedBox(
                height: 7,
              ),
              const ReusableText(
                  title:
                      "Reach out to us via any of these means if you have any complaints or suggestions",
                  size: 16,
                  weight: FontWeight.w400),
              const SizedBox(
                height: 15,
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemCount: itemList2.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      print("index ==${index}");
                      // if (index == 4) {
                      //   Navigator.push(
                      //     context,
                      //     MaterialPageRoute<void>(
                      //       builder: (BuildContext context) =>
                      //           const SettingsPage(),
                      //     ),
                      //   );
                      // }
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
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
