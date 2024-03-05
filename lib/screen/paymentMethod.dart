import 'package:flutter/material.dart';
import '../../../wedgits/reusable_text.dart';
import '../themes/color.dart';

class paymentMethodPage extends StatefulWidget {
  const paymentMethodPage({Key? key}) : super(key: key);

  @override
  State<paymentMethodPage> createState() => _paymentMethodPageState();
}

class _paymentMethodPageState extends State<paymentMethodPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.scafoldBackgroundColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: ListView(
          children: [
              const SizedBox(
                height: 30,
              ),
              const ReusableText(
                  title: 'PAYMENT METHOD', size: 24, weight: FontWeight.w700),
              const SizedBox(
                height: 7,
              ),
              const ReusableText(
                  title: "Choose payment method",
                  size: 16,
                  weight: FontWeight.w400),
              const SizedBox(
                height: 50,
              ),
              Container(
                height: 70,
                decoration: const BoxDecoration(
                    color: AppColor.whiteColor,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ListTile(
                      leading: Image(
                          height: 30,
                          width: 30,
                          image: AssetImage(
                            "assets/icons/pm1.png",
                          )),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                        color: AppColor.hintIconColor,
                      ),
                      title: ReusableText(
                          title: "Debit/Credit Card",
                          color: AppColor.blackColor,
                          size: 15,
                          weight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 70,
                decoration: const BoxDecoration(
                    color: AppColor.whiteColor,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ListTile(
                      leading: Image(
                          height: 30,
                          width: 30,
                          image: AssetImage(
                            "assets/icons/pm2.png",
                          )),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                        color: AppColor.hintIconColor,
                      ),
                      title: ReusableText(
                          title: "PayPal",
                          color: AppColor.blackColor,
                          size: 15,
                          weight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 70,
                decoration: const BoxDecoration(
                    color: AppColor.whiteColor,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ListTile(
                      leading: Image(
                          height: 30,
                          width: 30,
                          image: AssetImage(
                            "assets/icons/pm3.png",
                          )),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                        color: AppColor.hintIconColor,
                      ),
                      title: ReusableText(
                          title: "G-Pay",
                          color: AppColor.blackColor,
                          size: 15,
                          weight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 70,
                decoration: const BoxDecoration(
                    color: AppColor.whiteColor,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ListTile(
                      leading: Image(
                          height: 30,
                          width: 30,
                          image: AssetImage(
                            "assets/icons/pm4.png",
                          )),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                        color: AppColor.hintIconColor,
                      ),
                      title: ReusableText(
                          title: "Apple pay",
                          color: AppColor.blackColor,
                          size: 15,
                          weight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
