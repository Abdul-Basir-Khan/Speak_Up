import 'package:flutter/material.dart';

import '../../themes/color.dart';

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

            Text(
            "Privacy policy",
            style: TextStyle(
                color: AppColor.hintIconColor,
                fontWeight: FontWeight.w700,
                fontSize: 16),
          ),
            SizedBox(height: 10,),

            Text(
              "Purpose and scope",
              style: TextStyle(
                  color: AppColor.hintIconColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 15),
            ),
            SizedBox(height: 10,),
              Text(
                "This document pertains to Speak Up LLC (referred to as \"we,\" \"us,\" or \"Company\"), with company registration number 305566813, and registered office at 16/12th Ramiz Ganbarov str, Baki, Azerbaijan. Our primary objective is to safeguard and respect your privacy.\n\nTo fulfill this commitment, we outline in this privacy policy (referred to as the \"Policy\") the types of personal data we collect and the purposes for which we collect them. This applies when we provide you with our products and/or services (referred to as the \"Services\"), when you use our app or visit our website, or when you contact us in any other manner.\n\nWe assure you that all personal data collected by us are processed in compliance with the Law of Azerbaijan Republic on the Legal Protection of Personal Data and other applicable legal regulations.\n\nIf you have any questions about this Policy or if you wish to make any requests regarding the processing of your personal data, please reach out to us at info@app-speakup.com.",
                style: TextStyle(
                  color: AppColor.hintIconColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 10,),
              Text(
                "Personal data sources",
                style: TextStyle(
                    color: AppColor.hintIconColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 15),
              ),
              SizedBox(height: 10,),
              Text(
               'Personal data processed by the Company may come from the following sources:\n\nDirectly from you. For example, to register for a visit, you provide your personal data on the website.\nAutomatically generated. For example, you are browsing the Company\'s app, you are using the Company\'s app, which generates usage statistics data.\nFrom third parties. For example, we receive personal data from a third party which is related to you or is dealing with us, for example, business partners, subcontractors, service providers, merchants, etc.\nYou are responsible for ensuring that the personal data you provide is accurate, correct and complete. You must inform us immediately if there are any changes to the personal data you have provided. If you transmit data to us from third parties, you must inform them and make them aware of this Privacy Policy.\nWhat information we process, for what purpose and on what basis, and to whom we disclose it\nUser account management\nFor the purpose of providing the language learning services and user account management, including creating and managing user accounts, facilitating user authentication, and enabling account recovery, we may process the following personal data of platform users: the name, surname, email address, username, user ID, encrypted password, profile picture (optional), and conversation script.\nStorage terms: user account data will be retained for as long as the user maintains an active account. If an account remains inactive for a period of 1 year, the data will be deleted. The conversation data and related materials will be stored for a duration of 3 months from the date of the conversation.',

                style: TextStyle(
                  color: AppColor.hintIconColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
              Text(
                "Data recipients: Data Processors.",
                style: TextStyle(
                    color: AppColor.hintIconColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 15),
              ),
              SizedBox(height: 10,),
              Text(
               'Personalized learning experience\nFor the purpose of tracking language learning progress, providing personalized learning experiences and suggestions, and improving the app\'s content and features, we may process the following personal data of platform users: user preferences, age, native language, language learning interests, study habits, and interaction history, lesson completion data, quiz and exercise results, and proficiency level data.\nStorage terms: user progress data will be retained for as long as the user maintains an active account. If an account remains inactive for a period of 1 year, the data will be deleted.\nFor detailed information on the rationale, implications, and foreseeable consequences of our profiling and automated decision-making processes, please refer to the "Profiling and Automated Decision-Making" section of this Policy\n\nCommunication and support\n\nFor the purpose of facilitating communication with users, responding to inquiries, providing customer support, and sending relevant notifications, we may process the following personal data of platform users: the name, email address, message content, and support messaging history .\nStorage terms: data will be retained for as long as necessary.\nData recipients: Data Processors.\nPerformance analysis and Improvement\nFor the purpose of analyzing aggregated user data, identifying popular features, detecting usage patterns, and improving the app performance, content and features, we may process the following personal data of platform users: the age, sex, aggregated usage data (mouse events, keypresses), pages visited, interaction patterns, and device information (e.g., the IP address, browser type, resolution), geographic location (country only), and usage analytics.\n\nStorage terms: aggregated performance data will be retained for 365 days for the analysis and improvement purposes.\nData recipients: Data Processors.\n\nLegal and security purposes\nFor the purpose of fulfilling legal obligations, enforcing terms of service, protecting against fraud, security threats, and unauthorized access, and complying with applicable laws and regulations, we may process relevant user data associated with legal and security incidents, such as IP addresses, access logs, and account activity records.\n\nStorage terms: data will be retained for as long as necessary to fulfill legal obligations or until it is no longer required for security purposes.\nData recipients: Data Processors, Attorneys, Notaries, and Auditors.\nPayment processing\nFor the purpose of processing payments and managing financial transactions, we may process the following personal data of platform users: the name, surname, payment information (e.g., credit card details, billing address) and transaction history.\nStorage duration: 1 year.\nData recipients: Payment process providers (e.g., payment gateways, banks) will receive the necessary payment information to complete the transaction.\n\nFeedback\nFor the purpose of managing user reviews and feedback, we may process the following personal data of platform users: the review content, username, and rating.\nStorage terms: data will be retained for as long as necessary.\nCookies and similar technologies\n\nThis part of the Policy explains how we use cookies and similar tracking technologies on our language learning app and website.\nWhat are cookies?\nCookies are small text files that are stored on your device (computer, smartphone, or tablet) when you visit a website or use an app. They are widely used to make websites and apps work more efficiently and provide a better user experience. Cookies can be session cookies (which are temporary and deleted when you close your browser) or persistent cookies (which remain on your device until they expire or are deleted).\nHow do we use cookies?\nWe use cookies and similar tracking technologies to enhance your experience on our language learning app and website and to collect information about how you use them. The cookies we use may be categorized as follows:\nNecessary Cookies: These cookies are necessary for the functioning of our app and website and enable you to navigate and use their features. They are essential for providing the services you have requested.\nAnalytical and Performance Cookies: These cookies collect information about how you use our app and website and help us improve their performance. They allow us to analyze user behavior, measure usage, and optimize functionality.\nPreferences Cookies: These cookies allow our app and website to remember choices you make (such as your language preference) and provide enhanced features to personalize your learning experience.\nAdvertising and Targeting Cookies: We may partner with third-party advertising networks that use cookies and similar tracking technologies to deliver targeted advertisements to you on our website and other websites or apps based on your interests and browsing history.\nYour cookie choices\nYou can change your cookie settings at any time by clicking on the "Cookie settings" button on this page. You can later adjust your settings by ticking the existing boxes or unticking them by clicking on the "Accept checked" or "Accept all" button. You may need to refresh the page for your settings to take effect. You can also control the use of performance cookies, functional cookies, targeting cookies or advertising cookies by adjusting your browser settings.\n\nHowever, please note that disabling cookies may impact the functionality and user experience of our app.\n\nData recipients\n\nWe may disclose your personal data to the following recipients:\n\nPublic authorities and supervisory authorities: We may be required to disclose your personal data to public authorities or supervisory authorities if required by law or to comply with legal obligations.\nAttorneys, Notaries, and Auditors: In certain circumstances, we may disclose personal data to our attorneys, notaries, or auditors for legal or compliance purposes.\nData Processors. Please note that we do not store or retain your payment card details. The processing of your payment information is subject to the privacy policies and terms of use of the respective payment service providers.\nPayment Service Providers.\nWe may engage third-party data processors who process personal data on our behalf. These data processors act as our service providers and are authorized to process personal data only as instructed by us. We have entered into data processing agreements with these processors to ensure the appropriate handling and protection of your personal data. These data processors are required to implement appropriate technical and organizational measures to safeguard the confidentiality and security of your data.\nInternational data transfers\nIf your personal data is transferred outside Azerbaijan, we will take the necessary steps to ensure that your data is treated securely and in accordance with this Policy and we will ensure that it is protected and transferred in a manner consistent with the legal requirements applicable to the personal data.\n\nProfiling and automated decision making\nWe may engage in profiling and automated decision-making processes to provide you with a personalized learning experience on our language learning platform. These processes involve the analysis of your personal data, such as your language learning preferences, progress, and usage patterns, to tailor the content, recommendations, and learning materials to your specific needs.\nThe purpose of profiling and automated decision making is to enhance your learning experience, improve the performance of our platform, and provide you with relevant and personalized recommendations. This allows us to optimize the content and features of the platform to help you attain your individual language learning goals.\n\nPlease note that these processes take place based on the performance of the contract between you and us.\nPlease note that these processes take place based on the performance of the contract between you and us.\n\nIt\'s important to clarify that the profiling and automated decision making we employ do not create legal consequences or significantly impact your rights and freedoms. They are designed to improve your learning experience and provide personalized recommendations, but they do not result in decisions that have substantial legal or similar effects on you.\n\nIt\'s vital to state that due to the necessary nature of profiling for the conclusion or performance of the contract, you do not have the right to object to such processing. Profiling is an integral part of our service and is essential for us to deliver the personalized learning experience and tailored recommendations that you expect.\n\n While profiling and automated decision making are necessary for the performance of the contract between you and us, we take appropriate measures to ensure the accuracy, fairness, and transparency of these processes. They are subject to regular review to assess their impact on your rights and freedoms.\nData subject rights\nThe right to be informed. You have the right to be provided with clear, transparent and easily understandable information about how we process your personal data.The right to access. You have the right to request from us a copy of your personal data. of the requests. The Company will inform you of any such extension within 30 (thirty) calendar days of receipt of the request, together with the reasons for the delay.We may refuse to grant your request if your request is found to be manifestly unfounded or disproportionate. If we refuse to grant your request, we will give you our reasons for such refusal in writing.\n\nFinal provisions\n\nOur app, website may contain links to other websites which are not operated by the Company. When you decide to click on these links and be led to such websites, we recommend familiarizing yourself with their privacy policies or notices, cookie policies and/or other documents. The Company assumes no responsibility for the content, policies or practices of such third-party websites or services.\n We regularly review this Policy and reserve the right to modify it at any time in accordance with applicable laws and regulations. Any changes will take effect immediately upon their publication on our website. Please review this Policy from time to time to stay updated regarding any changes.\n\nreach out to us at:\n\ninfo@app-speakup.com.'
                ,style: TextStyle(
                  color: AppColor.hintIconColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 10,),
              SizedBox(height: 10,),

            ],),
        ),
      ),)
    ,
    );
  }
}
