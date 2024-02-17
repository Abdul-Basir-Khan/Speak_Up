import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:speakup/screen/dialog/voice_dialog.dart';
import '../../themes/color.dart';
import '../../wedgits/reusable_text.dart';
import '../conversation_screen.dart';

class chooseTutorPage extends StatefulWidget {
  const chooseTutorPage({Key? key}) : super(key: key);

  @override
  State<chooseTutorPage> createState() => _chooseTutorPageState();
}

class _chooseTutorPageState extends State<chooseTutorPage> {
  bool _isBlurOne = false;
  bool _isBlur = false;
  String? selectOptionT;
  String? selectOptionOneT;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.scafoldBackgroundColor,
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: ListView(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    const ReusableText(
                        title: 'CHOOSE YOUR TUTOR',
                        color: Color(0xFF000000),
                        size: 24,
                        weight: FontWeight.w700),
                    const ReusableText(
                        title: 'Kindly choose your preferred tutor to continue',
                        color: Color(0xFF000000),
                        size: 16,
                        weight: FontWeight.w400),
                    const SizedBox(
                      height: 35,
                    ),
                    Form(
                      key: _formKey,
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'This Field Is Required';
                          }
                          return null; // Return null for no validation errors
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: AppColor.whiteColor,
                            hintText: 'Enter Tutor Name',
                            hintStyle: const TextStyle(
                                color: AppColor.hintIconColor,
                                fontWeight: FontWeight.w400),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide:
                                const BorderSide(color: AppColor.blackColor)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide:
                                const BorderSide(color: AppColor.blackColor)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                    color: AppColor.blackColor))),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Blur(
                          overlay: Container(),
                          colorOpacity: 0,
                          blur: _isBlur ? 5 : 0,
                          child: Container(
                            height: 160,
                            width: MediaQuery.sizeOf(context).width * 0.44,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/images/manr.png"),
                                )),
                          ),
                        ),
                       const Spacer(),
                        Blur(
                          overlay: Container(),
                          colorOpacity: 0,
                          blur: _isBlurOne ? 5 : 0,
                          child: Container(
                            height: 160,
                            width: MediaQuery.sizeOf(context).width * 0.44,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/images/women.png"),
                                )),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.43,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColor.blackColor,
                              width: 1.0,
                            ),
                            borderRadius: const BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: DropdownButton<String>(
                              onTap: () {
                                setState(() {
                                  _isBlurOne = !_isBlurOne;
                                  _isBlur = false;
                                });
                              },
                              underline: Container(),
                              hint: const ReusableText(
                                title: "Choose Voice",
                                weight: FontWeight.w500,
                                size: 14,
                                color: AppColor.hintIconColor,
                              ),
                              value: selectOptionOneT,
                              items: <String>[
                                'Voice One',
                                'Voice Two',
                                'Voice Three',
                                'Voice Four',
                              ].map<DropdownMenuItem<String>>(
                                    (String valueOne) {
                                  return DropdownMenuItem<String>(
                                    value: valueOne,
                                    child: Text(
                                      valueOne,
                                      style: const TextStyle(
                                        color: AppColor.hintIconColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                      ),
                                    ),
                                  );
                                },
                              ).toList(),
                              onChanged: (String? newValueOne) {
                                setState(() {
                                  if (selectOptionT != null) {
                                    selectOptionT = null;
                                  }
                                  selectOptionOneT = newValueOne!;
                                });
                              },
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.43,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColor.blackColor,
                              width: 1.0,
                            ),
                            borderRadius: const BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: DropdownButton<String>(
                              onTap: () {
                                setState(() {
                                  _isBlur = !_isBlur;
                                  _isBlurOne = false;
                                });
                              },
                              underline: Container(),
                              hint: const ReusableText(
                                title: "Choose Voice",
                                weight: FontWeight.w500,
                                size: 14,
                                color: AppColor.hintIconColor,
                              ),
                              value: selectOptionT,
                              items: <String>[
                                'Voice One',
                                'Voice Two',
                                'Voice Three',
                                'Voice Four',
                              ].map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: const TextStyle(
                                        color: AppColor.hintIconColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                      ),
                                    ),
                                  );
                                },
                              ).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  if (selectOptionOneT != null) {
                                    selectOptionOneT = null;
                                  }
                                  selectOptionT = newValue!;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: GestureDetector(
                onTap: () {
                  if (_formKey.currentState!.validate() && (selectOptionOneT != null || selectOptionT != null)) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => const ConversationScreen(),
                      ),
                    );
                  } else {
                    // Check if the textField is empty
                    if (_formKey.currentState!.validate()) {
                      // If the textField is not empty, show dialog for not selecting voice
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return VoiceDialog(); // Assuming VoiceDialog is a custom dialog widget
                        },
                      );
                    }
                  }
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
                        "Continue",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                      ),
                    )),
              ),
            ),
            const SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
