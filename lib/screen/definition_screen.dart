import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import '../themes/color.dart';
import '../wedgits/reusable_text.dart';
import 'add_new_word.dart';

class Definition extends StatefulWidget {
  const Definition({super.key});

  @override
  State<Definition> createState() => _DefinitionState();
}

class _DefinitionState extends State<Definition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE7E3FF),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            height: 122,
            decoration: const ShapeDecoration(
              color: Color(0xff6849FF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
            ),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: AppColor.whiteColor,
                  ),
                ),
                const ReusableText(
                  title: 'Definitions',
                  color: Colors.white,
                  size: 24,
                  weight: FontWeight.w700,
                ),
                const SizedBox()
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Get.to(const AddNewWord());
                        },
                        child: const Icon(Icons.play_circle,
                            color: Color(0xff6849FF), size: 35)),
                    const SizedBox(
                      width: 20,
                    ),
                    const ReusableText(
                      title: 'parental',
                      color: Colors.black,
                      size: 20,
                      weight: FontWeight.w400,
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 15),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: ReusableText(
                      title:
                          'relating to or characteristic of or befitting a\nparent',
                      color: Colors.black.withOpacity(0.6499999761581421),
                      size: 14,
                      weight: FontWeight.w400,
                    )),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 0.80,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.07999999821186066),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: ReusableText(
                    title: 'EXAMPLE SENTENCE',
                    color: Colors.black,
                    size: 16,
                    weight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 20),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: ReusableText(
                      title:
                          'Parental guidance is essential for child\'s development\n\nMy parents have always been very supportive\nand have shown me a great deal of parental\nguidance supportive and have shown me a\ngreat deal of parental guidance',
                      color: Colors.black.withOpacity(0.6499999761581421),
                      size: 14,
                      weight: FontWeight.w400,
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
