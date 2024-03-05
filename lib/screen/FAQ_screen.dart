import 'package:flutter/material.dart';
import 'package:speakup/screen/variable/varibale.dart';
import '../../../wedgits/reusable_text.dart';
import '../themes/color.dart';
import 'contact_screen.dart';
import 'faq_new_screen.dart';

class FAQPage extends StatefulWidget {
  const FAQPage({Key? key}) : super(key: key);

  @override
  State<FAQPage> createState() => _FAQPageState();
}

class _FAQPageState extends State<FAQPage> {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.scafoldBackgroundColor,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                        title: 'FAQ', size: 24, weight: FontWeight.w700),
                    const Spacer(),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const ReusableText(
                    title: "Common questions",
                    size: 15,
                    weight: FontWeight.w700),
                const SizedBox(
                  height: 25,
                ),
                ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: const ReusableText(
                        title: "1.	What are the main features of the app? ",
                        size: 15,
                        color: AppColor.blackColor,
                        weight: FontWeight.w400),
                    trailing: GestureDetector(
                        onTap: () {
                          setState(() {
                            varibale.questionOne = true;
                            varibale.questionTwo = false;
                            varibale.questionThree = false;
                            varibale.questionFour = false;
                            varibale.questionFive = false;
                            varibale.questionSix = false;
                            varibale.questionSeven = false;
                            varibale.questionEight = false;
                            varibale.questionNine = false;
                            varibale.questionTen = false;
                            varibale.questionEleven = false;
                            varibale.questionTwelve = false;
                            varibale.questionThirteen = false;
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const FaqNewScreen()));
                          });
                        },
                        child: const Icon(
                          Icons.arrow_forward_ios,
                        ))
                ),
                ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: const ReusableText(
                        title:
                            "2.	What sets Speak Up foreign languages conversational app apart from others? ",
                        size: 15,
                        color: AppColor.blackColor,
                        weight: FontWeight.w400),
                    trailing: GestureDetector(
                        onTap: () {
                          setState(() {
                            varibale.questionTwo = true;
                            varibale.questionOne = false;
                            varibale.questionThree = false;
                            varibale.questionFour = false;
                            varibale.questionFive = false;
                            varibale.questionSix = false;
                            varibale.questionSeven = false;
                            varibale.questionEight = false;
                            varibale.questionNine = false;
                            varibale.questionTen = false;
                            varibale.questionEleven = false;
                            varibale.questionTwelve = false;
                            varibale.questionThirteen = false;
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const FaqNewScreen()));
                          });
                        },
                        child: const Icon(
                          Icons.arrow_forward_ios,
                        ))
                ),
                ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: const ReusableText(
                        title:
                            "3. As a foreign language teacher, how can I use the app in my work?",
                        size: 15,
                        color: AppColor.blackColor,
                        weight: FontWeight.w400),
                    trailing: GestureDetector(
                        onTap: () {
                          setState(() {
                            varibale.questionThree = true;
                            varibale.questionTwo = false;
                            varibale.questionOne = false;
                            varibale.questionFour = false;
                            varibale.questionFive = false;
                            varibale.questionSix = false;
                            varibale.questionSeven = false;
                            varibale.questionEight = false;
                            varibale.questionNine = false;
                            varibale.questionTen = false;
                            varibale.questionEleven = false;
                            varibale.questionTwelve = false;
                            varibale.questionThirteen = false;
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const FaqNewScreen()));
                          });
                        },
                        child: const Icon(
                          Icons.arrow_forward_ios,
                        ))
                ),
                ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: const ReusableText(
                        title:
                            "4.	As an A1 level student, how can I improve my speaking skills with the app?",
                        size: 15,
                        color: AppColor.blackColor,
                        weight: FontWeight.w400),
                    trailing: GestureDetector(
                        onTap: () {
                          setState(() {
                            varibale.questionFour = true;
                            varibale.questionTwo = false;
                            varibale.questionThree = false;
                            varibale.questionOne = false;
                            varibale.questionFive = false;
                            varibale.questionSix = false;
                            varibale.questionSeven = false;
                            varibale.questionEight = false;
                            varibale.questionNine = false;
                            varibale.questionTen = false;
                            varibale.questionEleven = false;
                            varibale.questionTwelve = false;
                            varibale.questionThirteen = false;
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const FaqNewScreen()));
                          });
                        },
                        child: const Icon(
                          Icons.arrow_forward_ios,
                        ))
                ),

                ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: const ReusableText(
                        title:
                            "5.	As A2 - C2 level student, how can I improve my speaking skills with the app?",
                        size: 15,
                        color: AppColor.blackColor,
                        weight: FontWeight.w400),
                    trailing: GestureDetector(
                        onTap: () {
                          setState(() {
                            varibale.questionFive = true;
                            varibale.questionTwo = false;
                            varibale.questionThree = false;
                            varibale.questionFour = false;
                            varibale.questionOne = false;
                            varibale.questionSix = false;
                            varibale.questionSeven = false;
                            varibale.questionEight = false;
                            varibale.questionNine = false;
                            varibale.questionTen = false;
                            varibale.questionEleven = false;
                            varibale.questionTwelve = false;
                            varibale.questionThirteen = false;
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const FaqNewScreen()));
                          });
                        },
                        child: const Icon(
                          Icons.arrow_forward_ios,
                        ))
                ),
                ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: const ReusableText(
                        title:
                            "6.	Why do you strongly recommend using the Lexicon function?",
                        size: 15,
                        color: AppColor.blackColor,
                        weight: FontWeight.w400),
                    trailing: GestureDetector(
                        onTap: () {
                          setState(() {
                            varibale.questionSix = true;
                            varibale.questionTwo = false;
                            varibale.questionThree = false;
                            varibale.questionFour = false;
                            varibale.questionFive = false;
                            varibale.questionOne = false;
                            varibale.questionSeven = false;
                            varibale.questionEight = false;
                            varibale.questionNine = false;
                            varibale.questionTen = false;
                            varibale.questionEleven = false;
                            varibale.questionTwelve = false;
                            varibale.questionThirteen = false;
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const FaqNewScreen()));
                          });
                        },
                        child: const Icon(
                          Icons.arrow_forward_ios,
                        ))
                ),
                ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: const ReusableText(
                        title: "7.	Hints for the Conversation page",
                        size: 15,
                        color: AppColor.blackColor,
                        weight: FontWeight.w400),
                    trailing: GestureDetector(
                        onTap: () {
                          setState(() {
                            varibale.questionSeven = true;
                            varibale.questionTwo = false;
                            varibale.questionThree = false;
                            varibale.questionFour = false;
                            varibale.questionFive = false;
                            varibale.questionSix = false;
                            varibale.questionOne = false;
                            varibale.questionEight = false;
                            varibale.questionNine = false;
                            varibale.questionTen = false;
                            varibale.questionEleven = false;
                            varibale.questionTwelve = false;
                            varibale.questionThirteen = false;
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const FaqNewScreen()));
                          });
                        },
                        child: const Icon(
                          Icons.arrow_forward_ios,
                        ))
                ),
                ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: const ReusableText(
                        title: "8.	Hints for the Vocabulary page",
                        size: 15,
                        color: AppColor.blackColor,
                        weight: FontWeight.w400),
                    trailing: GestureDetector(
                        onTap: () {
                          setState(() {
                            varibale.questionEight = true;
                            varibale.questionTwo = false;
                            varibale.questionThree = false;
                            varibale.questionFour = false;
                            varibale.questionFive = false;
                            varibale.questionSix = false;
                            varibale.questionSeven = false;
                            varibale.questionOne = false;
                            varibale.questionNine = false;
                            varibale.questionTen = false;
                            varibale.questionEleven = false;
                            varibale.questionTwelve = false;
                            varibale.questionThirteen = false;
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const FaqNewScreen()));
                          });
                        },
                        child: const Icon(
                          Icons.arrow_forward_ios,
                        ))
                ),
                ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: const ReusableText(
                        title: "9.	Hints for the VocTest page",
                        size: 15,
                        color: AppColor.blackColor,
                        weight: FontWeight.w400),
                    trailing: GestureDetector(
                        onTap: () {
                          setState(() {
                            varibale.questionNine = true;
                            varibale.questionTwo = false;
                            varibale.questionThree = false;
                            varibale.questionFour = false;
                            varibale.questionFive = false;
                            varibale.questionSix = false;
                            varibale.questionSeven = false;
                            varibale.questionEight = false;
                            varibale.questionOne = false;
                            varibale.questionTen = false;
                            varibale.questionEleven = false;
                            varibale.questionTwelve = false;
                            varibale.questionThirteen = false;
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const FaqNewScreen()));
                          });
                        },
                        child: const Icon(
                          Icons.arrow_forward_ios,
                        ))
                ),
                ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: const ReusableText(
                        title: "10.	Hints for the Glossary page",
                        size: 15,
                        color: AppColor.blackColor,
                        weight: FontWeight.w400),
                    trailing: GestureDetector(
                        onTap: () {
                          setState(() {
                            varibale.questionTen = true;
                            varibale.questionTwo = false;
                            varibale.questionThree = false;
                            varibale.questionFour = false;
                            varibale.questionFive = false;
                            varibale.questionSix = false;
                            varibale.questionSeven = false;
                            varibale.questionEight = false;
                            varibale.questionNine = false;
                            varibale.questionOne = false;
                            varibale.questionEleven = false;
                            varibale.questionTwelve = false;
                            varibale.questionThirteen = false;
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const FaqNewScreen()));
                          });
                        },
                        child: const Icon(
                          Icons.arrow_forward_ios,
                        ))
                ),
                ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: const ReusableText(
                        title:
                            "11.What will happen to my personal Glossary if I cancel my Subscription?",
                        size: 15,
                        color: AppColor.blackColor,
                        weight: FontWeight.w400),
                    trailing: GestureDetector(
                        onTap: () {
                          setState(() {
                            varibale.questionEleven = true;
                            varibale.questionTwo = false;
                            varibale.questionThree = false;
                            varibale.questionFour = false;
                            varibale.questionFive = false;
                            varibale.questionSix = false;
                            varibale.questionSeven = false;
                            varibale.questionEight = false;
                            varibale.questionNine = false;
                            varibale.questionTen = false;
                            varibale.questionOne = false;
                            varibale.questionTwelve = false;
                            varibale.questionThirteen = false;
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const FaqNewScreen()));
                          });
                        },
                        child: const Icon(
                          Icons.arrow_forward_ios,
                        ))
                ),
                ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: const ReusableText(
                        title: "12.	Can I use the app for free?",
                        size: 15,
                        color: AppColor.blackColor,
                        weight: FontWeight.w400),
                    trailing: GestureDetector(
                        onTap: () {
                          setState(() {
                            varibale.questionTwelve = true;
                            varibale.questionTwo = false;
                            varibale.questionThree = false;
                            varibale.questionFour = false;
                            varibale.questionFive = false;
                            varibale.questionSix = false;
                            varibale.questionSeven = false;
                            varibale.questionEight = false;
                            varibale.questionNine = false;
                            varibale.questionTen = false;
                            varibale.questionEleven = false;
                            varibale.questionOne = false;
                            varibale.questionThirteen = false;
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const FaqNewScreen()));
                          });
                        },
                        child: const Icon(
                          Icons.arrow_forward_ios,
                        ))),


                ListTile(
                  contentPadding: EdgeInsets.zero,

                  title: Wrap(
                    children: [
                      Text(
                        "13. Couldn\'t find the expected answer? ",
                        style: TextStyle( fontSize: 15,
                          color: AppColor.blackColor,
                          fontWeight: FontWeight.w400,),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            varibale.questionThirteen = true;
                            varibale.questionTwo = false;
                            varibale.questionThree = false;
                            varibale.questionFour = false;
                            varibale.questionFive = false;
                            varibale.questionSix = false;
                            varibale.questionSeven = false;
                            varibale.questionEight = false;
                            varibale.questionNine = false;
                            varibale.questionTen = false;
                            varibale.questionEleven = false;
                            varibale.questionTwelve = false;
                            varibale.questionOne = false;
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ContactPage()));
                          });
                        },
                        child: Text(
                          "Get in touch with us.",
                          style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff6849FF),
                              fontWeight: FontWeight.w400,
                          ),

                        ),
                      ),
                    ],

                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
