import 'package:flag/flag_widget.dart';
import 'package:flutter/material.dart';
import 'package:speakup/screen/variable/varibale.dart';
import '../../../wedgits/reusable_text.dart';
import '../../themes/color.dart';
import '../dialog/dialog_for_requirefield.dart';
import '../personalDetails_screen.dart';
import 'chooseLanguage_Page.dart';
import 'chooseTutor_page.dart';

class chooseLanguage1Page extends StatefulWidget {




  const chooseLanguage1Page({
    Key? key,
  }) : super(key: key);

  @override
  State<chooseLanguage1Page> createState() => _chooseLanguage1PageState();
}

class _chooseLanguage1PageState extends State<chooseLanguage1Page> {



  final TextEditingController confirmPasswordController =
      TextEditingController();
  String selectLanguage = "Select";



  final List<LanguageModel> languageCountryList = [
    LanguageModel(language: 'Albanian', country: 'Albania', countryCode: 'AL'),
    LanguageModel(language: 'Arabic', country: 'Saudi Arab', countryCode: 'SA'),
    LanguageModel(language: 'Armenian', country: 'Armenia', countryCode: 'AM'),
    LanguageModel(language: 'Awadhi', country: 'India', countryCode: 'IN'),
    LanguageModel(
        language: 'Azerbaijani', country: 'Azerbaijan', countryCode: 'AZ'),
    LanguageModel(language: 'Bashkir', country: 'Russia', countryCode: 'RU'),
    LanguageModel(language: 'Basque', country: 'Spain', countryCode: 'ES'),
    LanguageModel(
        language: 'Belarusian', country: 'Belarus', countryCode: 'BY'),
    LanguageModel(
        language: 'Bengali', country: 'Bangladesh', countryCode: 'BD'),
    LanguageModel(language: 'Bhojpuri', country: 'India', countryCode: 'IN'),
    LanguageModel(
        language: 'Bosnian',
        country: 'Bosnia and Herzegovina',
        countryCode: 'BA'),
    LanguageModel(
        language: 'Brazilian Portuguese', country: 'Brazil', countryCode: 'BR'),
    LanguageModel(
        language: 'Bulgarian', country: 'Bulgaria', countryCode: 'BG'),
    LanguageModel(
        language: 'Cantonese (Yue)', country: 'China', countryCode: 'CN'),
    LanguageModel(language: 'Catalan', country: 'Spain', countryCode: 'ES'),
    LanguageModel(
        language: 'Chhattisgarhi', country: 'India', countryCode: 'IN'),
    LanguageModel(language: 'Chinese', country: 'China', countryCode: 'CN'),
    LanguageModel(language: 'Croatian', country: 'Croatia', countryCode: 'HR'),
    LanguageModel(
        language: 'Czech', country: 'Czech Republic', countryCode: 'CZ'),
    LanguageModel(language: 'Danish', country: 'Denmark', countryCode: 'DK'),
    LanguageModel(language: 'Dogri', country: 'India', countryCode: 'IN'),
    LanguageModel(language: 'Dutch', country: 'Netherlands', countryCode: 'NL'),
    LanguageModel(language: 'English', country: 'United Kingdom, USA', countryCode: 'GB'),
    LanguageModel(language: 'Estonian', country: 'Estonia', countryCode: 'EE'),
    LanguageModel(language: 'Faroese', country: 'Faroe Islands', countryCode: 'FO'),
    LanguageModel(language: 'Finnish', country: 'Finland', countryCode: 'FI'),
    LanguageModel(language: 'French', country: 'France', countryCode: 'FR'),
    LanguageModel(language: 'Galician', country: 'Spain', countryCode: 'ES'),
    LanguageModel(language: 'Georgian', country: 'Georgia', countryCode: 'GE'),
    LanguageModel(language: 'German', country: 'Germany', countryCode: 'DE'),
    LanguageModel(language: 'Greek', country: 'Greece', countryCode: 'GR'),
    LanguageModel(language: 'Gujarati', country: 'India', countryCode: 'IN'),
    LanguageModel(language: 'Haryanvi', country: 'India', countryCode: 'IN'),
    LanguageModel(language: 'Hindi', country: 'India', countryCode: 'IN'),
    LanguageModel(language: 'Hungarian', country: 'India', countryCode: 'IN'),
    LanguageModel(language: 'Haryanvi', country: 'Hungary', countryCode: 'HU'),
    LanguageModel(language: 'Indonesian', country: 'Indonesia', countryCode: 'ID'),
    LanguageModel(language: 'Irish', country: 'Ireland', countryCode: 'IE'),
    LanguageModel(language: 'Italian', country: 'Italy', countryCode: 'IT'),
    LanguageModel(language: 'Japanese', country: 'Japan', countryCode: 'JP'),
    LanguageModel(language: 'Javanese', country: 'Indonesia', countryCode: 'ID'),
    LanguageModel(language: 'Kannada', country: 'India', countryCode: 'IN'),
    LanguageModel(language: 'Kashmiri', country: 'India', countryCode: 'IN'),
    LanguageModel(language: 'Kazakh', country: 'Kazakhstan', countryCode: 'KZ'),
    LanguageModel(language: 'Konkani', country: 'India', countryCode: 'IN'),
    LanguageModel(language: 'Korean', country: 'South Korea', countryCode: 'KR'),
    LanguageModel(language: 'Kyrgyz', country: 'Kyrgyzstan', countryCode: 'KG'),
    LanguageModel(language: 'Latvian', country: 'Latvia', countryCode: 'LV'),
    LanguageModel(language: 'Lithuanian', country: 'Lithuania', countryCode: 'LT'),
    LanguageModel(language: 'Macedonian', country: 'North Macedonia', countryCode: 'MK'),
    LanguageModel(language: 'Maithili', country: 'India', countryCode: 'IN'),
    LanguageModel(language: 'Malay', country: 'Malaysia', countryCode: 'MY'),
    LanguageModel(language: 'Maltese', country: 'Malta', countryCode: 'MT'),
    LanguageModel(language: 'Mandarin', country: 'China', countryCode: 'IN'),
    LanguageModel(language: 'Mandarin Chinese', country: 'China', countryCode: 'CN'),
    LanguageModel(language: 'Marathi', country: 'India', countryCode: 'IN'),
    LanguageModel(language: 'Marwari', country: 'India', countryCode: 'IN'),
    LanguageModel(language: 'Min Nan', country: 'Moldova', countryCode: 'MD'),
    LanguageModel(language: 'Moldovan', country: 'Mongolia', countryCode: 'MN'),
    LanguageModel(language: 'Mongolian', country: 'Montenegro', countryCode: 'ME'),
    LanguageModel(language: 'Montenegrin', country: 'China', countryCode: 'CN'),
    LanguageModel(language: 'Nepali', country: 'Nepal', countryCode: 'NP'),
    LanguageModel(language: 'Norwegian', country: 'Norway', countryCode: 'NO'),
    LanguageModel(language: 'Oriya', country: 'India', countryCode: 'IN'),
    LanguageModel(language: 'Pashto', country: 'Afghanistan', countryCode: 'AF'),
    LanguageModel(language: 'Persian (Farsi)', country: 'Iran', countryCode: 'IR'),
    LanguageModel(language: 'Polish', country: 'Poland', countryCode: 'PL'),
    LanguageModel(language: 'Portuguese', country: 'Portugal', countryCode: 'PT'),
    LanguageModel(language: 'Punjabi', country: 'India', countryCode: 'IN'),
    LanguageModel(language: 'Rajasthani', country: 'India', countryCode: 'IN'),
    LanguageModel(language: 'Romanian', country: 'Romania', countryCode: 'RO'),
    LanguageModel(language: 'Russian', country: 'Russia', countryCode: 'RU'),
    LanguageModel(language: 'Sanskrit', country: 'India', countryCode: 'IN'),
    LanguageModel(language: 'Santali', country: 'India', countryCode: 'IN'),
    LanguageModel(language: 'Serbian', country: 'Serbia', countryCode: 'RS'),
    LanguageModel(language: 'Sindhi', country: 'Pakistan', countryCode: 'PK'),
    LanguageModel(language: 'Sinhala', country: 'Sri Lanka', countryCode: 'LK'),
    LanguageModel(language: 'Slovak', country: 'Slovakia', countryCode: 'SK'),
    LanguageModel(language: 'Slovene', country: 'Slovenia', countryCode: 'SI'),
    LanguageModel(language: 'Slovenian', country: 'Slovenia', countryCode: 'SI'),
    LanguageModel(language: 'Spanish', country: 'Spain', countryCode: 'ES'),
    LanguageModel(language: 'Swahili', country: 'Kenya', countryCode: 'KE'),
    LanguageModel(language: 'Swedish', country: 'Sweden', countryCode: 'SE'),
    LanguageModel(language: 'Tajik', country: 'Tajikistan', countryCode: 'TJ'),
    LanguageModel(language: 'Tamil', country: 'Sri Lanka', countryCode: 'LK'),
    LanguageModel(language: 'Tatar', country: 'Tatarstan', countryCode: 'RU'),
    LanguageModel(language: 'Thai', country: 'Thailand', countryCode: 'TH'),
    LanguageModel(language: 'Turkish', country: 'Turkiye', countryCode: 'TR'),
    LanguageModel(language: 'Turkmen', country: 'Turkmenistan', countryCode: 'TM'),
    LanguageModel(language: 'Ukrainian', country: 'Ukraine', countryCode: 'UA'),
    LanguageModel(language: 'Urdu', country: 'Pakistan', countryCode: 'PK'),
    LanguageModel(language: 'Uzbek', country: 'Uzbekistan', countryCode: 'UZ'),
    LanguageModel(language: 'Vietnamese', country: 'Vietnam', countryCode: 'VN'),
    LanguageModel(language: 'Welsh', country: 'Wales', countryCode: 'GB'),
    LanguageModel(language: 'Wu', country: 'China', countryCode: 'CN'),
  ];

  String? selectOption;
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.scafoldBackgroundColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: SingleChildScrollView(

            child: SizedBox(
              height: MediaQuery.sizeOf(context).height*0.95,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const ReusableText(
                      title: 'YOUR TARGET LANGUAGE',
                      color: Color(0xFF000000),
                      size: 24,
                      weight: FontWeight.w700),
                  const SizedBox(
                    height: 15,
                  ),
                  const ReusableText(
                      title: 'Kindly choose your target language to continue',
                      color: Color(0xFF000000),
                      size: 16,
                      weight: FontWeight.w400),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(15),
                                  topLeft: Radius.circular(15))),
                          builder: (BuildContext context) {
                            return Container(
                              height: MediaQuery.sizeOf(context).height * 0.60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20)),
                              padding: const EdgeInsets.all(16.0),
                              child: SingleChildScrollView(
                                  scrollDirection: Axis.vertical,
                                  physics: const ScrollPhysics(),
                                  child:
                                  ListView.builder(
                                    itemCount: languageCountryList.length,shrinkWrap: true,physics: const ScrollPhysics(),scrollDirection: Axis.vertical,
                                    itemBuilder: (BuildContext context, int index) { return  GestureDetector(
                                      onTap: (){
                                        setState(() {
                                          selectLanguage=languageCountryList[index].language.toString();
                                          Navigator.pop(context);

                                        });
                                      },
                                      child: Container(
                                        padding:const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                        margin: const EdgeInsets.only(bottom: 10),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            border: Border.all(color: AppColor.primaryColor)
                                        ),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Flag.fromString(languageCountryList[index].countryCode.toString(),height: 20,width: 50,),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            const SizedBox(width: 10,),
                                            Text(languageCountryList[index].language.toString(),style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: AppColor.blackColor),),
                                            const Text(", ",   style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                                color: AppColor.blackColor),),
                                            Text(languageCountryList[index].country.toString(),style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: AppColor.blackColor),),

                                          ],),
                                      ),
                                    ); },



                                  )
                              ),
                            );
                          },
                        );
                      });
                    },
                    child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColor.blackColor,
                              width: 1.0,
                            ),
                            borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ReusableText(
                                title: selectLanguage,
                                weight: FontWeight.w500,
                                size: 16,
                                color: AppColor.hintIconColor,
                              ),
                              const Icon(
                                Icons.arrow_drop_down,
                                color: AppColor.hintIconColor,
                              )
                            ],
                          ),
                        )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const ReusableText(
                      title: 'Kindly choose your Proficiency Level',
                      color: Color(0xFF000000),
                      size: 16,
                      weight: FontWeight.w400),
                  const SizedBox(
                    height: 15
                  ),

                  Container(
                    height: 50,
                    padding: const EdgeInsets.only(left: 15),
                    width: MediaQuery.sizeOf(context).width*1,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColor.blackColor,
                          width: 1.0,
                        ),
                        borderRadius:
                        const BorderRadius.all(Radius.circular(20))),
                    child:   Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width:orientation==Orientation.portrait?  MediaQuery.sizeOf(context).width*0.82:MediaQuery.sizeOf(context).width*0.91,
                          child: DropdownButton(
                                      isExpanded: true,
                            dropdownColor: AppColor.scafoldBackgroundColor,
                            underline: Container(),
                            hint:   const ReusableText(
                              title: "Choose Level",
                              weight: FontWeight.w500,
                              size: 14,
                              color: AppColor.hintIconColor,
                            ),
                            value: selectOption,
                            items: <String>['A 1', 'A 2', 'B 1', 'B 2', 'C 1', 'C 2']
                                .map<DropdownMenuItem<String>>((String valueOne) {
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
                            }).toList(),
                            onChanged: (String? newValueOne) {
                              setState(() {
                                selectOption = newValueOne!;
                              });
                            },

                          ),
                        ),
                      ],
                    ),
                  ),

                  const Expanded(
                      child: SizedBox(
                    height: 5,
                  )),


                  GestureDetector(
                    onTap: () {

                      if( varibale.targetLanguage==true){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                            const personalDetailsPage(),
                          ),
                        );
                      }
                      else if(selectLanguage =='Select'){

                        showDialog(context: context, builder: (BuildContext context) { return const DialogForRequiredField(); }, );
                      }
                      else if(selectOption!='A 1' && selectOption!='A 2' && selectOption!='B 1' && selectOption!='B 2' && selectOption!='C 1' && selectOption!='C 2'){
                        showDialog(context: context, builder: (BuildContext context) { return const DialogForRequiredField(); }, );
                      }


                      else{
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const chooseTutorPage()));

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
                  const SizedBox(
                    height: 30,
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
