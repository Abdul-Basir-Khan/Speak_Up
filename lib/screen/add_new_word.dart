import 'package:flutter/material.dart';

import '../themes/color.dart';
import '../wedgits/reusable_text.dart';

class AddNewWord extends StatefulWidget {
  const AddNewWord({super.key});

  @override
  State<AddNewWord> createState() => _AddNewWordState();
}

class _AddNewWordState extends State<AddNewWord> {

  bool _isVisible=false;
  bool _isVisibleTrans=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE7E3FF),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: ListView(
            children: [
                Container(
                  height: 122,
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  decoration: const ShapeDecoration(
                    color: Color(0xFF6849FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                  ),
                  child:    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap:(){
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: AppColor.whiteColor,
                        ),
                      ),
                      const Spacer(),
                      const ReusableText(
                        title: 'Add New Word',
                        color: Colors.white,
                        size: 24,
                        weight: FontWeight.w700,
                      ),
                     const Spacer()
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const ReusableText(
                      title:
                      'Add a new word or its translation in your native language',
                      color: Colors.black,
                      size: 16,
                      weight: FontWeight.w400,
                    ),
                    const SizedBox(height: 15,),
                    Container(
                        height: 48,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child: const TextField(
                          style: TextStyle(fontWeight: FontWeight.normal),
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(
                                left: 10,
                              ),
                              hintText: 'Type something',
                              border: InputBorder.none),
                        )),

                  const SizedBox(height: 20,),
                  const Divider(thickness: 0.5,height: 0.5,),
                    const SizedBox(height: 10,),
                  Visibility(
                    visible: _isVisible,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const ReusableText(
                          title: 'English',
                          color: Colors.black,
                          size: 14,
                          weight: FontWeight.w500,
                        ),

                        const SizedBox(
                          height: 20,
                        ),
                   Row(
                          children: [
                            const ReusableText(
                              color: AppColor.hintIconColor,
                              title: 'worried',
                              size: 24,
                              weight: FontWeight.w500,
                            ),
                            const Spacer(),
                            InkWell(
                              onTap: (){
                                setState(() {
                                });

                              },
                              child:
                              const CircleAvatar(radius: 17,backgroundColor: AppColor.primaryColor,child: Icon(Icons.play_arrow,color: Colors.white,),),

                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Visibility(
                          visible: _isVisibleTrans,
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(height: 10,),
                              Divider(thickness: 0.5,height: 0.5,),
                              SizedBox(height: 10,),
                              ReusableText(
                                title: 'Other translations',
                                color: Colors.black,
                                size: 20,
                                weight: FontWeight.w600,
                              ),
                              SizedBox(
                                height: 10,)
                              ,
                              ReusableText(
                                  title: 'anxious',
                                  size: 17,
                                  weight: FontWeight.w500),
                              ReusableText(
                                title:
                                'narahat,',
                                color: AppColor.hintIconColor,
                                size: 17,
                                weight: FontWeight.w400,
                              ),
                              SizedBox(
                                height: 15,
                              ),


                            ],),
                        )
                      ],
                    ),
                  ),





                  ],
                ),
              )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _isVisible=!_isVisible;
              });
            },
        child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 13),
              margin: const EdgeInsets.symmetric(vertical: 8,horizontal: 10),
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    color: Colors.black.withOpacity(0.5),
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: const Center(
                  child: ReusableText(
                    title: 'See Translation',
                    color: AppColor.blackColor,
                    size: 16,
                  )),
            ),
          ),
          const SizedBox(height: 10,),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 13),
              margin: const EdgeInsets.symmetric(vertical: 8,horizontal: 10),
              width: double.infinity,
              decoration: ShapeDecoration(
                color: const Color(0xFF6849FF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: const Center(
                  child: ReusableText(
                    title: 'Add',
                    color: Colors.white,
                    size: 16,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
