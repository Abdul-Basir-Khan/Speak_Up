import 'package:flutter/material.dart';
import 'package:speakup/screen/settings_new_screen.dart';
import '../../../wedgits/reusable_text.dart';
import '../themes/color.dart';
import 'auth/privacy_screen.dart';
import 'dialog/dialog_for_terms.dart';

class TCPage extends StatefulWidget {
  const TCPage({Key? key}) : super(key: key);

  @override
  State<TCPage> createState() => _TCPageState();
}

class _TCPageState extends State<TCPage> {
  bool value=false;
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
                        title: 'TERMS & CONDITIONS',
                        size: 24,
                        weight: FontWeight.w700),
                    const Spacer(),
                  ],
                ),
                const SizedBox(
                  height: 7,
                ),


                const ReusableText(
                    title: "These Terms and Conditions (\"Terms\") govern your use of Speak Up, and any other related products and services provided by Speak Up LLC (\"Company,\\" "app\",  \"website,\" \"we,\" \"us,\" \"our\") that refer or link to these Terms (collectively, the \"Services\"). By accessing and using the Services, you agree to be bound by these Terms. If you do not agree with any part of these Terms, you are prohibited from using the Services.",
                    size: 15,
                    weight: FontWeight.w400),
                const SizedBox(
                  height: 20,
                ),
                const ReusableText(
                    title:
                       'SERVICES',
                    size: 16,
                    weight: FontWeight.w400),

                const SizedBox(
                  height: 15,
                ),
                const ReusableText(
                    title:
                   'We strive to provide reliable Services, but we cannot guarantee uninterrupted or error-free operation due to factors beyond our control. By using our Services, you acknowledge and assume the associated risks of accessing and downloading information from our Services.'
                   ,
                    size: 15,
                    weight: FontWeight.w400),
                const SizedBox(
                  height: 15,
                ),
                const ReusableText(
                    title:
                    'INTELLECTUAL PROPERTY RIGHTS',
                    size: 16,
                    weight: FontWeight.w400),

                const SizedBox(
                  height: 15,
                ),
                const ReusableText(
                    title:
                   'We own or have licenses for all intellectual property rights in our Services, including content, trademarks, and logos. The content and trademarks are protected by copyright, trademark, and other laws. You may only use the Services for personal, non-commercial purposes and must not copy, reproduce, distribute, or exploit them without our permission.',
                    size: 15,
                    weight: FontWeight.w400),
                SizedBox(height: 15,)
,
                const ReusableText(
                    title:
                    'USER REPRESENTATIONS',
                    size: 16,
                    weight: FontWeight.w400),

                const SizedBox(
                  height: 15,
                ),
                const ReusableText(
                    title:
                    'By using the Services, you represent and warrant that the information you provide is true, accurate, and current. You agree to comply with these Terms, and you are of legal age to use the Services in your jurisdiction. You will not access the Services through automated or non-human means, use them for illegal purposes, or violate any applicable laws or regulations.'
                    ,
                    size: 15,
                    weight: FontWeight.w400),
                const SizedBox(
                  height: 15,
                ),
                const ReusableText(
                    title:
                    'USER REGISTRATION',
                    size: 16,
                    weight: FontWeight.w400),

                const SizedBox(
                  height: 15,
                ),
                const ReusableText(
                    title:
                   'If required, you must register to use the Services. Keep your password confidential and be responsible for all activities on your account. We reserve the right to remove or change inappropriate usernames.',
                    size: 15,
                    weight: FontWeight.w400),
                const SizedBox(
                  height: 15,
                ),



                const ReusableText(
                    title:
                    'PROHIBITED ACTIVITIES',
                    size: 16,
                    weight: FontWeight.w400),

                const SizedBox(
                  height: 15,
                ),
                const ReusableText(
                    title:
                    'You may only use the Services for their intended purpose and not for any commercial endeavors, unless explicitly endorsed or approved by us. Prohibited activities include unauthorized data retrieval, fraud, circumvention of security features, harassment, and violation of laws or regulations.',size: 15,
                    weight: FontWeight.w400),
                const SizedBox(
                  height: 15,
                ),




                const ReusableText(
                    title:
                    'CONTRIBUTION LICENSE',
                    size: 16,
                    weight: FontWeight.w400),

                const SizedBox(
                  height: 15,
                ),
                const ReusableText(
                    title:
                   'By submitting feedback or suggestions, you grant us the right to use and share them without compensation to you. You retain ownership of your Contributions and are solely responsible for them.'
                    ,
                    size: 15,
                    weight: FontWeight.w400),
                const SizedBox(
                  height: 15,
                ),


                const ReusableText(
                    title:
                    'GUIDELINES FOR REVIEWS',
                    size: 16,
                    weight: FontWeight.w400),

                const SizedBox(
                  height: 15,
                ),
                const ReusableText(
                    title:
                  'If you leave reviews or ratings, they must be truthful, respectful, and not violate these Terms or any laws. We reserve the right to accept, reject, or remove reviews at our discretion.' ,
                    size: 15,
                    weight: FontWeight.w400),
                const SizedBox(
                  height: 15,
                ),

                const ReusableText(
                    title:
                    'SERVICES MANAGEMENT',
                    size: 16,
                    weight: FontWeight.w400),

                const SizedBox(
                  height: 15,
                ),
                const ReusableText(
                    title:
                    'We have the right to monitor the Services for violations of these Terms, take legal action against violators, restrict access to or disable Contributions, and manage the Services to protect our rights and ensure proper functioning.'
                    ,
                    size: 15,
                    weight: FontWeight.w400),
                const SizedBox(
                  height: 15,
                ),



                const ReusableText(
                    title:
                    'PRIVACY POLICY',
                    size: 16,
                    weight: FontWeight.w400),

                const SizedBox(
                  height: 15,
                ),
                const ReusableText(
                    title:
                   'Your privacy is important to us. Please review our Privacy Policy, which is incorporated into these Terms. By using the Services, you consent to the processing of your data in accordance with our Privacy Policy.',
                    size: 15,
                    weight: FontWeight.w400),
                const SizedBox(
                  height: 15,
                ),

                const ReusableText(
                    title:
                    'TERM AND TERMINATION',
                    size: 16,
                    weight: FontWeight.w400),

                const SizedBox(
                  height: 15,
                ),
                const ReusableText(
                    title:
                    'These Terms remain in effect while you use the Services. We may terminate or suspend your access to the Services at any time without notice or liability.',
                    size: 15,
                    weight: FontWeight.w400),
                const SizedBox(
                  height: 15,
                ),
                const ReusableText(
                    title:
                    'MODIFICATIONS AND INTERRUPTIONS',
                    size: 16,
                    weight: FontWeight.w400),

                const SizedBox(
                  height: 15,
                ),
                const ReusableText(
                    title:
                  'We reserve the right to modify, remove, or change the Services\' contents at our sole discretion without notice. We have no obligation to update the information on our Services. We will not be liable for any modification, price change, suspension, or discontinuance of the Services.\n\n We cannot guarantee uninterrupted availability of the Services. There may be interruptions, delays, or errors due to hardware, software, or maintenance-related issues. We may change, suspend, update, discontinue, or modify the Services without notice. You agree that we are not liable for any loss, damage, or inconvenience caused by your inability to access or use the Services during downtime or discontinuance. We are not obligated to maintain or support the Services or provide any corrections, updates, or releases.'
                    ,
                    size: 15,
                    weight: FontWeight.w400),
                const SizedBox(
                  height: 15,
                ),
                const ReusableText(
                    title:
                    'GOVERNING LAW & DISPUTE RESOLUTION',
                    size: 16,
                    weight: FontWeight.w400),

                const SizedBox(
                  height: 15,
                ),
                const ReusableText(
                    title:
                  'These Legal Terms are governed by the laws of Azerbaijan Republic. Both Speak Up and yourself agree to submit to the jurisdiction of the courts in Azerbaijan to defend your consumer protection rights related to these Legal Terms.',
                    size: 15,
                    weight: FontWeight.w400),
                const SizedBox(
                  height: 15,
                ),


                const ReusableText(
                    title:
                    'CORRECTIONS',
                    size: 16,
                    weight: FontWeight.w400),

                const SizedBox(
                  height: 15,
                ),
                const ReusableText(
                    title:
                    'The Services may contain typographical errors, inaccuracies, or omissions in descriptions, pricing, availability, and other information. We reserve the right to correct errors, inaccuracies, or omissions and update the information on the Services without prior notice.',
                    size: 15,
                    weight: FontWeight.w400),
                const SizedBox(
                  height: 15,
                ),




                const ReusableText(
                    title:
                    'DISCLAIMER',
                    size: 16,
                    weight: FontWeight.w400),

                const SizedBox(
                  height: 15,
                ),
                const ReusableText(
                    title:
                   'The Services are provided on an "as-is" and "as-available" basis. Your use of the Services is at your own risk. We disclaim all warranties, express or implied, including merchantability, fitness for a particular purpose, and non-infringement. We make no warranties or representations regarding the accuracy or completeness of the Services\' content or linked websites or mobile applications. We assume no liability for errors, personal injury, unauthorized access, interruptions, bugs, viruses, or any content posted by third parties. We are not responsible for third-party products or services advertised or offered through the Services. Use your judgment and exercise caution when making purchases.'
                    ,
                    size: 15,
                    weight: FontWeight.w400),
                const SizedBox(
                  height: 15,
                ),

                const ReusableText(
                    title:
                    'LIMITATIONS OF LIABILITY',
                    size: 16,
                    weight: FontWeight.w400),

                const SizedBox(
                  height: 15,
                ),
                const ReusableText(
                    title:
                   'We, our directors, employees, or agents, are not liable for any direct, indirect, consequential, exemplary, incidental, special, or punitive damages arising from your use of the Services, even if advised of the possibility of such damages. Our liability to you, regardless of the cause or form of the action, is limited to the amount paid by you to us during the preceding six-month period. Certain laws may grant you additional rights, and limitations on warranties or damages may not apply to you.',
                    size: 15,
                    weight: FontWeight.w400),
                const SizedBox(
                  height: 15,
                ),

                const ReusableText(
                    title:
                    'USER DATA',
                    size: 16,
                    weight: FontWeight.w400),

                const SizedBox(
                  height: 15,
                ),
                const ReusableText(
                    title:
                   'While we maintain data transmitted to the Services for performance management, you are responsible for all data transmitted or related to your use of the Services. We are not liable for any loss or corruption of data, and you waive any right of action against us regarding such loss or corruption.',
                    size: 15,
                    weight: FontWeight.w400),
                const SizedBox(
                  height: 15,
                ),

                const ReusableText(
                    title:
                    'ELECTRONIC COMMUNICATIONS, TRANSACTIONS, AND SIGNATURES',
                    size: 16,
                    weight: FontWeight.w400),

                const SizedBox(
                  height: 15,
                ),
                const ReusableText(
                    title:
                    'Visiting the Services, sending emails, and completing online forms constitute electronic communications. You consent to receive electronic communications and agree that they satisfy any legal requirement for written communication. You agree to the use of electronic signatures, contracts, orders, and other records, and electronic delivery of notices, policies, and transaction records. You waive any requirements for non-electronic records or signatures.',
                    size: 15,
                    weight: FontWeight.w400),
                const SizedBox(
                  height: 15,
                ),


                const ReusableText(
                    title:
                    'REFUND POLICY',
                    size: 16,
                    weight: FontWeight.w400),

                const SizedBox(
                  height: 15,
                ),
                const ReusableText(
                    title:
                   'In the cases of customers’ dissatisfaction with our services and app in general, we offer a money-back guarantee.\nTo initiate the refund process, please follow these steps:\nContact us via email at info@app-speakup.com  within 7 days of the initial purchase, which is when we first charged you.Clearly articulate the reasons why you believe the plan did not work for you.Once your refund request is received, our Customer Support Team will review it within 2 business days. We will then provide you with a final decision.\nPlease note that if your refund is approved, the processing time may take from 6 to 9 business days.',
                    size: 15,
                    weight: FontWeight.w400),
                const SizedBox(
                  height: 15,
                ),


                const ReusableText(
                    title:
                    'MISCELLANEOUS',
                    size: 16,
                    weight: FontWeight.w400),

                const SizedBox(
                  height: 15,
                ),
                const ReusableText(
                    title:
                  'These Legal Terms, along with posted policies, constitute the entire agreement between you and us.'
                  , size: 15,
                    weight: FontWeight.w400),
                const SizedBox(
                  height: 15,
                ),

                const ReusableText(
                    title:
                    'CONTACT US',
                    size: 16,
                    weight: FontWeight.w400),

                const SizedBox(
                  height: 15,
                ),
                const ReusableText(
                    title:
                  'In order to resolve a complaint regarding the Services or to receive further information regarding use of the Services, please contact us at:\n\nSpeak Up\n info@app-speakup.com\nAzerbaijan\nTerms & conditions'
                   , size: 15,
                    weight: FontWeight.w400),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>PrivacyScreen()));
                  },
                  child: const ReusableText(
                      title:
                      'Privacy Policy'
                      , size: 15,
                      color: AppColor.darkBlueColor,
                      weight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 25,
                      width: 25,
                      child: Checkbox(
                        activeColor: AppColor.primaryColor,
                        side: const BorderSide(color: AppColor.blackColor),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        value: value,
                        onChanged: (v) {
                          setState(() {
                            value = v!;
                          });
                        },
                      ),
                    ),
                    SizedBox(width: 15,),
                    ReusableText(
                        title: "I have read and accept the terms and conditions",
                        size: 12,
                        weight: FontWeight.w400),

                  ],
                ),


                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    value==true?
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingNewScreen())):

                    showDialog(context: context, builder: (BuildContext context) { return DialogForTerms(); },);
                  },
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: AppColor.buttonColor,
                      ),
                      height: 50,
                      width: double.infinity,
                      child: const Center(
                        child: Text(
                          "Proceed",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                        ),
                      )),
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
