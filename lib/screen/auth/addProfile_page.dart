import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:speakup/screen/variable/varibale.dart';
import '../../../wedgits/reusable_text.dart';
import '../../themes/color.dart';
import '../personalDetails_screen.dart';
import 'chooseLanguage_Page.dart';

class addProfilePage extends StatefulWidget {
  const addProfilePage({Key? key}) : super(key: key);

  @override
  State<addProfilePage> createState() => _addProfilePageState();
}

class _addProfilePageState extends State<addProfilePage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  File? _image;

  Future<void> _getImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: source);

    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.scafoldBackgroundColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            children: [
             Expanded(
               child: ListView(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    const Center(
                      child: ReusableText(
                          title: 'ADD YOUR PROFILE PICTURE!',
                          color: Color(0xFF000000),
                          size: 24,
                          weight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                          ),
                          child: _image == null
                              ? CircleAvatar(
                                  radius: 70,
                                  child:
                                      Image.asset(('assets/images/addprofile.png')),
                                )
                              : CircleAvatar(
                                  radius: 70,
                                  backgroundColor: AppColor.whiteColor,
                                  backgroundImage: FileImage(_image!),
                                ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    GestureDetector(
                      onTap: () {
                        _getImage(ImageSource.gallery);
                      },
                      child: Container(
                          height: 50,
                          decoration: const BoxDecoration(
                              color: AppColor.whiteColor,
                              borderRadius: BorderRadius.all(Radius.circular(20))),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              ReusableText(
                                title: "Upload from files",
                                weight: FontWeight.w500,
                                size: 16,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Image(
                                  image: AssetImage("assets/images/uploadimage.png"))
                            ],
                          )),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        _getImage(ImageSource.camera);
                      },
                      child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: AppColor.blackColor,
                                width: 1.0,
                              ),
                              borderRadius: const BorderRadius.all(Radius.circular(20))),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ReusableText(
                                title: "Take a picture",
                                weight: FontWeight.w500,
                                size: 16,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Image(image: AssetImage("assets/images/takepic.png"))
                            ],
                          )),
                    ),



                  ],
                ),
             ),
              GestureDetector(
                onTap: () {
                  varibale.profilePic == true
                      ? Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) =>
                      const personalDetailsPage(),
                    ),
                  ):
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) =>
                      const chooseLanguagePage(),
                    ),
                  );
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
              const SizedBox(
                height: 15,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    varibale.profilePic == true
                        ? Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) =>
                        const personalDetailsPage(),
                      ),
                    ):
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) =>
                        const chooseLanguagePage(),
                      ),
                    );
                  },
                  child: const ReusableText(
                    title: "Skip",
                    size: 16,
                    color: AppColor.blackColor,
                    weight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
