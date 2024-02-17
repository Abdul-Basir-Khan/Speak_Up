import 'package:flutter/material.dart';
import 'package:speakup/screen/paymentMethod.dart';
import '../../../wedgits/reusable_text.dart';
import '../themes/color.dart';

class growPage extends StatefulWidget {
  const growPage({Key? key}) : super(key: key);

  @override
  State<growPage> createState() => _growPageState();
}

class _growPageState extends State<growPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  int? _value = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.scafoldBackgroundColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: ListView(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },

                      child: const Icon(Icons.arrow_back_ios_sharp,color: Colors.black,)),
                  const Spacer(),
                  const ReusableText(
                      title: 'Compare Our Subscription Plan',
                      size: 18,
                      weight: FontWeight.w500),
                  const Spacer(),
                ],
              ),

              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      width: 0.5, color: Colors.grey), // Set the border color
                  borderRadius: BorderRadius.circular(20),
                ),
                child: RadioListTile(
                  controlAffinity: ListTileControlAffinity.trailing,
                  title: const Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ReusableText(
                              title: "Grow", size: 16, weight: FontWeight.bold),
                          ReusableText(
                              title: "8 hrs/month for 12 usd",
                              size: 14,
                              weight: FontWeight.w500),
                        ],
                      ),
                    ],
                  ),
                  value: 1,
                  groupValue: _value,
                  onChanged: (val) {
                    setState(() {
                      _value = val;
                    });
                  },
                  activeColor: AppColor.blackColor,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      width: 0.5, color: Colors.grey), // Set the border color
                  borderRadius: BorderRadius.circular(20),
                ),
                child: RadioListTile(
                  controlAffinity: ListTileControlAffinity.trailing,
                  title: const Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ReusableText(
                              title: "Standard",
                              size: 16,
                              weight: FontWeight.bold),
                          ReusableText(
                              title: "12 hrs/month for 14 usd",
                              size: 14,
                              weight: FontWeight.w500),
                        ],
                      ),
                    ],
                  ),
                  value: 2,
                  groupValue: _value,
                  onChanged: (val) {
                    setState(() {
                      _value = val;
                      print(_value);
                    });
                  },
                  activeColor: AppColor.blackColor,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      width: 0.5, color: Colors.grey), // Set the border color
                  borderRadius: BorderRadius.circular(20),
                ),
                child: RadioListTile(
                  controlAffinity: ListTileControlAffinity.trailing,
                  title: const Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ReusableText(
                              title: "Premium",
                              size: 16,
                              weight: FontWeight.bold),
                          ReusableText(
                              title: "15 hrs/month for 16 usd",
                              size: 14,
                              weight: FontWeight.w500),
                        ],
                      ),
                    ],
                  ),
                  value: 3,
                  groupValue: _value,
                  onChanged: (val) {
                    setState(() {
                      _value = val;
                      print(_value);
                    });
                  },
                  activeColor: AppColor.blackColor,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ReusableText(
                  title: _value==1?"Grow includes:":_value==2?"Standard includes:":"Premium includes:", size: 18, weight: FontWeight.bold),
              const SizedBox(
                height: 15,
              ),

        _value==1?

        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment:MainAxisAlignment.start,children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.check),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: ReusableText(
        title:
        "Access: Ads-free 8 hrs/month conversation, making this package perfect for A1-B1 Level learners", size: 13.5,
        weight: FontWeight.w400),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.check),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: ReusableText(
        title:
        "Personal AI Tutor: Glossary based conversation.", size: 13.5,
        weight: FontWeight.w400),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.check),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: ReusableText(
        title:
        "Alternative Sentence Suggestions",size: 13.5,
        weight: FontWeight.w400),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.check),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: ReusableText(
        title:
        "Instant One Tap Translation ",size: 13.5,
        weight: FontWeight.w400),
              ),
            ],
          ),



          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.check),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: ReusableText(
                    title:
                    "Personalized Vocabulary Learning and Testing Tool",size: 13.5,
                    weight: FontWeight.w400),
              ),
            ],
          ),

          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.check),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: ReusableText(
                    title:
                    "Interactive Tutoring: Dive into immersive language learning with our Role-Play, Paragraph or Free Topic conversation models. Personalized tutoring sessions to enhance your speaking and comprehension skills.",size: 13.5,
                    weight: FontWeight.w400),
              ),
            ],
          ),


          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.check),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: ReusableText(
                    title:
                    "Unlimited Translations: Break down language barriers effortlessly with unlimited access to our cutting-edge translation services.",size: 13.5,
                    weight: FontWeight.w400),
              ),
            ],
          ),


          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.check),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: ReusableText(
                    title:
                    "Priority Support: Enjoy top-notch customer support with priority assistance to ensure a smooth experience on your language journey.",size: 13.5,
                    weight: FontWeight.w400),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.check),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: ReusableText(
                    title:
                    "Regular Updates: Stay ahead with the latest features and improvements as we continuously enhance your translation and tutoring experience.",weight: FontWeight.w400),
              ),
            ],
          ),
        ],
        ) :_value==2?

        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment:MainAxisAlignment.start,children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.check),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: ReusableText(
        title:
        "Access: Ads-free 12 hrs/month conversation, making this package perfect for All Level learners",
        size: 13.5,
        weight: FontWeight.w400),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.check),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: ReusableText(
        title:
        "Personal AI Tutor: Glossary based conversation.",
        size: 13.5,
        weight: FontWeight.w400),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.check),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: ReusableText(
        title:
        "Alternative Sentence Suggestions",
        size: 13.5,
        weight: FontWeight.w400),
              ),
            ],
          ),


          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.check),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: ReusableText(
        title:
        "Instant One Tap Translation ",size: 13.5,
        weight: FontWeight.w400),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.check),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: ReusableText(
        title:
        "Personalized Vocabulary Learning and Testing Tool",size: 13.5,
        weight: FontWeight.w400),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.check),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: ReusableText(
        title:
      'Personalized Tutoring: Conversations on Role-Play, Paragraph discussion and Free Topics are carefully designed for students at every proficiency level '
                    ,size: 13.5,
        weight: FontWeight.w400),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.check),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: ReusableText(
        title:
        "Priority Support: Get top-notch customer help with priority assistance to ensure a smooth experience on your language journey.",size: 13.5,
        weight: FontWeight.w400),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.check),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: ReusableText(
        title:
        "Improvements:  keep updated with the latest features as we continuously enhance your learning and conversational experience.",size: 13.5,
        weight: FontWeight.w400),
              ),
            ],
          ),
        ],
        ):

        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment:MainAxisAlignment.start,children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.check),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: ReusableText(
        title:
        "Extended Access: Enjoy 15 hrs/month of uninterrupted language exploration, making this package perfect for long-term learners and enthusiasts.",size: 13.5,
        weight: FontWeight.w400),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.check),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: ReusableText(
        title:
        "Personal AI Tutor: Glossary based conversation.",size: 13.5,
        weight: FontWeight.w400),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.check),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: ReusableText(
        title:
        "Alternative Sentence Suggestions",size: 13.5,
        weight: FontWeight.w400),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.check),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: ReusableText(
        title:
        "Instant One Tap Translation ",size: 13.5,
        weight: FontWeight.w400),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.check),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: ReusableText(
        title:
        "Personalized Vocabulary Learning and Testing Tool",size: 13.5,
        weight: FontWeight.w400),
              ),
            ],
          ),


          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.check),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: ReusableText(
        title:
        "Premium Tutoring: Elevate your language proficiency with extended and advanced conversation-based tutoring. Dive into in-depth conversations and refine your skills.",size: 13.5,
        weight: FontWeight.w400),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.check),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: ReusableText(
        title:
        "Exclusive Features: Access additional languages, exclusive content, and advanced features reserved for our valued Premium subscribers.",size: 13.5,
        weight: FontWeight.w400),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.check),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: ReusableText(
        title:
        "Priority Everything: From customer support to new feature releases, experience the VIP treatment with priority access and assistance.", size: 13.5,
        weight: FontWeight.w400),
              ),
            ],
          ),
        ],
        ),



        const SizedBox(height: 30,),

              GestureDetector(
                onTap: () {
                  if (_value == 1) {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) =>
                            const paymentMethodPage(),
                      ),
                    );
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) =>
                        const paymentMethodPage(),
                      ),
                    );;
                  }
                },
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: AppColor.buttonColor,
                    ),
                    height: 50,
                    width: double.infinity,
                    child: _value == 2
                        ? const Center(
                            child: Text(
                              "Subscribe",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16),
                            ),
                          )
                        : const Center(
                            child: Text(
                              "Subscribe",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16),
                            ),
                          )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
