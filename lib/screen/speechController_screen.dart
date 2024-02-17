import 'package:flutter/material.dart';
import 'package:speakup/screen/settings_new_screen.dart';
import '../../../wedgits/reusable_text.dart';
import '../themes/color.dart';

class speechControllerPage extends StatefulWidget {
  const speechControllerPage({Key? key}) : super(key: key);

  @override
  State<speechControllerPage> createState() => _speechControllerPageState();
}

class _speechControllerPageState extends State<speechControllerPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    final orientation = MediaQuery.of(context).orientation;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.scafoldBackgroundColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child:SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: SizedBox(
              height: MediaQuery.sizeOf(context).height*0.90,
              child: Column(

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
                          title: 'SPEECH CONTROLLER',
                          size: 24,
                          weight: FontWeight.w700),
                      const Spacer(),
                    ],
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  const ReusableText(
                      title: "Kindly customize tutor’s speech rate here!",
                      size: 16,
                      weight: FontWeight.w400),
                  const SizedBox(
                    height: 50,
                  ),
                  const ReusableText(
                      title: "Speech Rate", size: 16, weight: FontWeight.w400),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: AppColor.whiteColor,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      child: TextFormField(
                        controller: emailController,
                        decoration: const InputDecoration(
                          hintText: '85',
                          hintStyle: TextStyle(
                              color: AppColor.hintIconColor,
                              fontWeight: FontWeight.w400),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const ReusableText(
                    title: "Enter between 75 and 100",
                    size: 13.5,
                    weight: FontWeight.w400,
                    color: AppColor.purpleTextColor,
                  ),

              Spacer(),

                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> SettingNewScreen()));
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
                            "Save Data",
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
      ),
    );
  }
}
