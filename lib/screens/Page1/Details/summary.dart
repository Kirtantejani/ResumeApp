import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:resumeapp/controller/personal_detail_controller.dart';
import 'package:resumeapp/screens/Page1/Details/work_exprience.dart';

import '../../../common/Color.dart';
import '../../../utilis/custom_button.dart';
import '../../../utilis/custom_text.dart';
import '../../../utilis/custom_text_form_field.dart';

class SummaryScreen extends StatefulWidget {
  const SummaryScreen({super.key});

  @override
  State<SummaryScreen> createState() => _SummaryScreenState();
}

class _SummaryScreenState extends State<SummaryScreen> {
  final summary = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        centerTitle: true,
        // automaticallyImplyLeading: true,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 22.sp,
          ),
        ),
        backgroundColor: Colors.blue,
        title: CustomText(
          text: "Personal Details",
          fontFamily: "Mulish",
          color: Colors.white,
          fontSize: 22.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.0.w, vertical: 10.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomTextFormField(
              controller: summary,
              title: 'Summary',
              weight: FontWeight.w500,
              hintText: 'Enter Proessional summary ...',
              contentPadding: EdgeInsets.only(left: 12, top: 10),
              hintFontFamily: 'Roboto',
              hintWeight: FontWeight.w300,
              hintColor: greyColor1,
              minLine: 15,
              maxLine: 1000,
              backgroundColor: textFormFieldBackground,
              inputBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: borderFormFieldColor,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0.w, vertical: 8.h),
              child: Row(
                children: [
                  Center(
                    child: CustombuttonWidget(
                      onPressed: () async {
                        Get.back();
                      },
                      text: 'Back',
                      textColor: white,
                      buttonWidth: Get.width * 0.35,
                      buttonborderRadius: 10,
                      buttonBackgroundColor: Colors.lightBlue,
                    ),
                  ),
                  Spacer(),
                  Center(
                    child: CustombuttonWidget(
                      onPressed: () async {
                        PersonalController().summary = summary.text;
                        Get.to(WorkExperience(),
                            transition: Transition.rightToLeft);
                      },
                      text: 'Next',
                      textColor: white,
                      buttonWidth: Get.width * 0.35,
                      buttonborderRadius: 10,
                      buttonBackgroundColor: Colors.lightBlue,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
