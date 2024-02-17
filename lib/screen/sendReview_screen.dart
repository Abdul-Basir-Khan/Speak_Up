import 'package:flutter/material.dart';
import 'package:speakup/screen/settings_new_screen.dart';
import '../../../wedgits/reusable_text.dart';
import '../themes/color.dart';

class sendReviewPage extends StatefulWidget {
  const sendReviewPage({Key? key}) : super(key: key);

  @override
  State<sendReviewPage> createState() => _sendReviewPageState();
}

class _sendReviewPageState extends State<sendReviewPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },

                        child: const Icon(Icons.arrow_back_ios_sharp,color: Colors.black,)),
                    const Spacer(),
                    const ReusableText(
                        title: 'SEND REVIEW', size: 24, weight: FontWeight.w700),
                    const Spacer(),
                  ],
                ),
                const SizedBox(
                  height: 7,
                ),
                const ReusableText(
                    title:
                        "We would love to hear your feedback, if you’re interested in sending us a review.",
                    size: 16,
                    weight: FontWeight.w400),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 450,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15, vertical: 10),
                  decoration: const BoxDecoration(
                      color: AppColor.whiteColor,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextFormField(
                    maxLines: 5,
                        controller: emailController,
                        decoration: const InputDecoration(

                          hintText: 'Comment...',
                          hintStyle: TextStyle(
                              color: AppColor.hintIconColor,
                              fontWeight: FontWeight.w400),
                          border: InputBorder.none,
                        ),
                      ),

                    ],
                  ),
                ),
                const SizedBox(height: 15,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                        decoration: BoxDecoration(
                            color: AppColor.whiteColor,borderRadius: BorderRadius.circular(20)
                        ),
                        child: const Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "File jpg, pdf, doc.",
                              style: TextStyle(
                                  color:AppColor.hintIconColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16),
                            ),
                            Spacer(),
                            Icon(Icons.delete,color: AppColor.hintIconColor,)
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 20,),
                    InkWell(
                        onTap: (){

                        },
                        child: const Icon(Icons.attach_file_outlined,color: AppColor.hintIconColor,)),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>  SettingNewScreen()));

                  },
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: AppColor.buttonColor,
                      ),
                      height: 50,
                      width: double.infinity,
                      child: const Center(
                        child:
                        Text(
                          "Send",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                        ),
                      )),
                ),
                const SizedBox(
                  height: 10,
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
