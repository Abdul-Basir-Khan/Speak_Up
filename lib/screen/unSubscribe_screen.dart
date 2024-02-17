import 'package:flutter/material.dart';
import '../../../wedgits/reusable_text.dart';
import '../themes/color.dart';

class unSubscribePage extends StatefulWidget {
  const unSubscribePage({Key? key}) : super(key: key);

  @override
  State<unSubscribePage> createState() => _unSubscribePageState();
}

class _unSubscribePageState extends State<unSubscribePage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.scafoldBackgroundColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              const ReusableText(
                  title: 'UNSUBSCRIBE NOW', size: 24, weight: FontWeight.w700),
              const SizedBox(
                height: 7,
              ),
              const ReusableText(
                  title:
                      "Are you sure you want to Unsubscribe? If yes, tap Proceed button. ",
                  size: 16,
                  weight: FontWeight.w400),
              const SizedBox(
                height: 15,
              ),
              const ReusableText(
                  title:
                      "This will take effect upon completion of the current subscription",
                  size: 16,
                  weight: FontWeight.w400),
              const SizedBox(
                height: 10,
              ),
              const Expanded(
                  child: SizedBox(
                height: 5,
              )),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(

                    onTap: () {

                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: Colors.transparent,
                      ),
                      height: 50,
                      width: MediaQuery.sizeOf(context).width*0.90,
                      child: const Center(
                        child: ReusableText(
                          title: "Proceed",
                          size: 15,
                          weight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
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
                        "Back",
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
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
